import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routing/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard{
  AuthGuard();

  final bool _isAuthenticated = true;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_isAuthenticated) {
      resolver.next(true);
    }else{
      router.push(LoginRoute(callback:(isSuccess){
        resolver.next(isSuccess);
      }));
    }
  }
}