// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    NotificationRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NotificationPage(
          key: args.key,
          account: args.account,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    ClipDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ClipDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClipDetailPage(
          key: args.key,
          account: args.account,
          id: args.id,
        ),
      );
    },
    ClipListRoute.name: (routeData) {
      final args = routeData.argsAs<ClipListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClipListPage(
          key: args.key,
          account: args.account,
        ),
      );
    },
    UserRoute.name: (routeData) {
      final args = routeData.argsAs<UserRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserPage(
          key: args.key,
          userId: args.userId,
          account: args.account,
        ),
      );
    },
    TabSettingsRoute.name: (routeData) {
      final args = routeData.argsAs<TabSettingsRouteArgs>(
          orElse: () => const TabSettingsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TabSettingsPage(
          key: args.key,
          tabIndex: args.tabIndex,
        ),
      );
    },
    TabSettingsListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabSettingsListPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    TimeLineRoute.name: (routeData) {
      final args = routeData.argsAs<TimeLineRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TimeLinePage(
          key: args.key,
          currentTabSetting: args.currentTabSetting,
        ),
      );
    },
    FavoritedNoteRoute.name: (routeData) {
      final args = routeData.argsAs<FavoritedNoteRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavoritedNotePage(
          key: args.key,
          account: args.account,
        ),
      );
    },
  };
}

/// generated route for
/// [NotificationPage]
class NotificationRoute extends PageRouteInfo<NotificationRouteArgs> {
  NotificationRoute({
    Key? key,
    required Account account,
    List<PageRouteInfo>? children,
  }) : super(
          NotificationRoute.name,
          args: NotificationRouteArgs(
            key: key,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const PageInfo<NotificationRouteArgs> page =
      PageInfo<NotificationRouteArgs>(name);
}

class NotificationRouteArgs {
  const NotificationRouteArgs({
    this.key,
    required this.account,
  });

  final Key? key;

  final Account account;

  @override
  String toString() {
    return 'NotificationRouteArgs{key: $key, account: $account}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ClipDetailPage]
class ClipDetailRoute extends PageRouteInfo<ClipDetailRouteArgs> {
  ClipDetailRoute({
    Key? key,
    required Account account,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          ClipDetailRoute.name,
          args: ClipDetailRouteArgs(
            key: key,
            account: account,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ClipDetailRoute';

  static const PageInfo<ClipDetailRouteArgs> page =
      PageInfo<ClipDetailRouteArgs>(name);
}

class ClipDetailRouteArgs {
  const ClipDetailRouteArgs({
    this.key,
    required this.account,
    required this.id,
  });

  final Key? key;

  final Account account;

  final String id;

  @override
  String toString() {
    return 'ClipDetailRouteArgs{key: $key, account: $account, id: $id}';
  }
}

/// generated route for
/// [ClipListPage]
class ClipListRoute extends PageRouteInfo<ClipListRouteArgs> {
  ClipListRoute({
    Key? key,
    required Account account,
    List<PageRouteInfo>? children,
  }) : super(
          ClipListRoute.name,
          args: ClipListRouteArgs(
            key: key,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'ClipListRoute';

  static const PageInfo<ClipListRouteArgs> page =
      PageInfo<ClipListRouteArgs>(name);
}

class ClipListRouteArgs {
  const ClipListRouteArgs({
    this.key,
    required this.account,
  });

  final Key? key;

  final Account account;

  @override
  String toString() {
    return 'ClipListRouteArgs{key: $key, account: $account}';
  }
}

/// generated route for
/// [UserPage]
class UserRoute extends PageRouteInfo<UserRouteArgs> {
  UserRoute({
    Key? key,
    required String userId,
    required Account account,
    List<PageRouteInfo>? children,
  }) : super(
          UserRoute.name,
          args: UserRouteArgs(
            key: key,
            userId: userId,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const PageInfo<UserRouteArgs> page = PageInfo<UserRouteArgs>(name);
}

class UserRouteArgs {
  const UserRouteArgs({
    this.key,
    required this.userId,
    required this.account,
  });

  final Key? key;

  final String userId;

  final Account account;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, userId: $userId, account: $account}';
  }
}

/// generated route for
/// [TabSettingsPage]
class TabSettingsRoute extends PageRouteInfo<TabSettingsRouteArgs> {
  TabSettingsRoute({
    Key? key,
    int? tabIndex,
    List<PageRouteInfo>? children,
  }) : super(
          TabSettingsRoute.name,
          args: TabSettingsRouteArgs(
            key: key,
            tabIndex: tabIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'TabSettingsRoute';

  static const PageInfo<TabSettingsRouteArgs> page =
      PageInfo<TabSettingsRouteArgs>(name);
}

class TabSettingsRouteArgs {
  const TabSettingsRouteArgs({
    this.key,
    this.tabIndex,
  });

  final Key? key;

  final int? tabIndex;

  @override
  String toString() {
    return 'TabSettingsRouteArgs{key: $key, tabIndex: $tabIndex}';
  }
}

/// generated route for
/// [TabSettingsListPage]
class TabSettingsListRoute extends PageRouteInfo<void> {
  const TabSettingsListRoute({List<PageRouteInfo>? children})
      : super(
          TabSettingsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabSettingsListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TimeLinePage]
class TimeLineRoute extends PageRouteInfo<TimeLineRouteArgs> {
  TimeLineRoute({
    Key? key,
    required TabSetting currentTabSetting,
    List<PageRouteInfo>? children,
  }) : super(
          TimeLineRoute.name,
          args: TimeLineRouteArgs(
            key: key,
            currentTabSetting: currentTabSetting,
          ),
          initialChildren: children,
        );

  static const String name = 'TimeLineRoute';

  static const PageInfo<TimeLineRouteArgs> page =
      PageInfo<TimeLineRouteArgs>(name);
}

class TimeLineRouteArgs {
  const TimeLineRouteArgs({
    this.key,
    required this.currentTabSetting,
  });

  final Key? key;

  final TabSetting currentTabSetting;

  @override
  String toString() {
    return 'TimeLineRouteArgs{key: $key, currentTabSetting: $currentTabSetting}';
  }
}

/// generated route for
/// [FavoritedNotePage]
class FavoritedNoteRoute extends PageRouteInfo<FavoritedNoteRouteArgs> {
  FavoritedNoteRoute({
    Key? key,
    required Account account,
    List<PageRouteInfo>? children,
  }) : super(
          FavoritedNoteRoute.name,
          args: FavoritedNoteRouteArgs(
            key: key,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoritedNoteRoute';

  static const PageInfo<FavoritedNoteRouteArgs> page =
      PageInfo<FavoritedNoteRouteArgs>(name);
}

class FavoritedNoteRouteArgs {
  const FavoritedNoteRouteArgs({
    this.key,
    required this.account,
  });

  final Key? key;

  final Account account;

  @override
  String toString() {
    return 'FavoritedNoteRouteArgs{key: $key, account: $account}';
  }
}
