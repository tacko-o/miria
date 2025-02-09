import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:miria/providers.dart";

enum ImageType {
  avatarIcon,
  avatarDecoration,
  customEmoji,
  imageThumbnail,
  image,
  serverIcon,
  role,
  ad,
  other
}

class NetworkImageView extends ConsumerWidget {
  final String url;
  final ImageType type;
  final ImageLoadingBuilder? loadingBuilder;
  final ImageErrorWidgetBuilder? errorBuilder;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const NetworkImageView({
    required this.url,
    required this.type,
    super.key,
    this.loadingBuilder,
    this.errorBuilder,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (url.endsWith(".svg")) {
      return SvgPicture.network(
        url,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        placeholderBuilder: (context) =>
            loadingBuilder?.call(context, Container(), null) ??
            const SizedBox.shrink(),
      );
    }

    if (type == ImageType.avatarIcon ||
        type == ImageType.avatarDecoration ||
        type == ImageType.customEmoji ||
        type == ImageType.imageThumbnail ||
        type == ImageType.serverIcon ||
        type == ImageType.role) {
      return CachedNetworkImage(
        imageUrl: url,
        fit: fit,
        errorWidget: (context, url, error) =>
            errorBuilder?.call(context, error, StackTrace.current) ??
            Container(
              alignment: Alignment.center,
              decoration: type == ImageType.avatarDecoration
                  ? null
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 224, 224, 224),
                    ),
              child: type == ImageType.avatarDecoration
                  ? null
                  : SvgPicture.asset(
                      "assets/images/miria_error.svg",
                      colorFilter: const ColorFilter.mode(
                        Color.fromARGB(255, 117, 117, 117),
                        BlendMode.srcIn,
                      ),
                      width: 48,
                      height: 48,
                    ),
            ),
        cacheManager: ref.read(cacheManagerProvider),
        width: width,
        height: height,
        placeholder: (context, url) =>
            loadingBuilder?.call(context, Container(), null) ??
            const SizedBox.shrink(),
        fadeInDuration: Duration.zero,
      );
    } else {
      return Image.network(
        url,
        fit: fit,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        width: width,
        height: height,
      );
    }
  }
}
