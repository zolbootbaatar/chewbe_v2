import 'package:auto_route/auto_route.dart';
import 'package:chewbe_v2/Pages/Bottombar/main.dart';
import 'package:chewbe_v2/Pages/Bottombar/Home/Home.dart';

part 'App_Router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: BottomBarIndexRoute.page, path: '/', initial: true),
      ];
}
