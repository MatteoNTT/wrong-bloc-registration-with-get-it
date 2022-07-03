import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/main_page.dart';
import '../../presentation/pages/secondary_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(path: '/main', page: MainPage, initial: true),
  AutoRoute(path: '/secondary', page: SecondaryPage),
])
class $AppRouter {}
