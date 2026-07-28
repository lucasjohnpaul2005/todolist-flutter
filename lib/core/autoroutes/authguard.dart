import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'routes.gr.dart';

/// Fills in the template's commented-out stub with real Firebase Auth logic.
class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (FirebaseAuth.instance.currentUser != null) {
      // Signed in — continue to the requested route.
      resolver.next(true);
    } else {
      // Not signed in — redirect to login. Using resolver.redirect keeps
      // the guarded route out of the stack once auth succeeds.
      resolver.redirect(const AuthRoute());
    }
  }
}
