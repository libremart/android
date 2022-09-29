import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:libremart/core/pipe/libremart_app.dart';
import 'package:libremart/features/browse/widgets/pages/app_page.dart';
import 'package:libremart/features/browse/widgets/pages/browse_page.dart';
import 'package:libremart/features/installed/widgets/pages/installed_page.dart';
import 'package:libremart/features/updates/widgets/pages/updates_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: LibreMartApp,
      children: [
        AutoRoute(
          path: 'browse',
          name: 'BrowseRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: BrowsePage,
            ),
            AutoRoute(
              path: ':appId',
              page: AppPage,
            )
          ],
        ),
        AutoRoute(
          path: 'installed',
          name: 'InstalledRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: InstalledPage,
            ),
            // AutoRoute(
            //   path: 'community-screen',
            //   page: CommunityScreen,
            // ),
          ],
        ),
        AutoRoute(
          path: 'updates',
          name: 'UpdatesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UpdatesPage,
            ),
            // AutoRoute(
            //   path: 'community-screen',
            //   page: CommunityScreen,
            // ),
          ],
        ),
      ],
    ),
    // AutoRoute(
    //   path: 'new-post',
    //   name: 'NewPostRouter',
    //   page: NewPostScreen,
    // ),
  ],
)
class $AppRouter {}
