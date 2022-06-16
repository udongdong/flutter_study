import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/view/book_feed/book_feed.dart';
import 'package:auto_route_test/view/home.dart';

import '../view/book_list/book_list_page.dart';
import '../view/login.dart';
import '../view/my_info/my_info.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
        initial: true,
      children: [
        AutoRoute(page: BookFeedPage),
        AutoRoute(page: BookListPage),
        AutoRoute(page: MyInfoPage)
      ]
    ),
    AutoRoute(path:' /login', page: LoginPage)
  ]
)
class $AppRouter {}
