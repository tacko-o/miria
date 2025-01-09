import "dart:io";
import "dart:math";
import "package:flutter/material.dart";
import "package:path_provider/path_provider.dart";

Future<String> getCacheSizeWithUnit() async {
  const unitArr = ["Byte", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];

  // キャッシュサイズ
  final cacheSizeByte = await getCacheSizeByte();

  // 単位
  final unitIndex = (cacheSizeByte.toString().length / 3).ceil() - 1;
  final unit = unitArr[unitIndex];

  // "00.0 GB"の形にする
  final cacheSizeStr = (cacheSizeByte / pow(1000, unitIndex)).toStringAsFixed(1);
  return "$cacheSizeStr $unit";
}

/// キャッシュサイズを取得する
Future<int> getCacheSizeByte() async {
  // キャッシュ格納ディレクトリを取得して
  // 中身のファイルサイズを全て合計
  final tempDir = await getTemporaryDirectory();
  final tempDirSize = _getFileDirSize(tempDir);
  return tempDirSize;
}

/// ファイルサイズを取得する
int _getFileDirSize(FileSystemEntity file) {
  if (file is File) {
    // ファイルならファイルサイズを返却
    return file.lengthSync();
  } else if (file is Directory) {
    // ディレクトリなら配下のファイルサイズの合計を返す
    var sum = 0;
    final children = file.listSync();
    for (final child in children) {
      sum += _getFileDirSize(child);
    }
    return sum;
  }
  return 0;
}

/// キャッシュをクリアする
Future<String> clearCache() async {
  // キャッシュ格納ディレクトリを取得して
  // 配下のファイルを全て削除
  final tempDir = await getTemporaryDirectory();
  await deleteFile(tempDir);
  final cacheSizeStr = await getCacheSizeWithUnit();

  // キャッシュクリア後のキャッシュサイズを返す(0byteのはず)
  return cacheSizeStr;
}

/// ファイルを削除する
Future<void> deleteFile(FileSystemEntity file) async {
  if (file is File) {
    // ファイルならそのまま削除
    file.deleteSync();
  } else if (file is Directory) {
    // ディレクトリなら配下のファイルを再起的に削除
    final children = file.listSync();
    for (final child in children) {
        await deleteFile(child);
    }
  }
}
