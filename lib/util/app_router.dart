import 'package:auto_route/annotations.dart';

import '../pages/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, path: '/home'),
  ],
)
class $AppRouter {}
