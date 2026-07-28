import 'package:auto_route/auto_route.dart';
import 'authguard.dart';
import 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(page: TodoRoute.page, guards: [AuthGuard()]),
      ];
}
