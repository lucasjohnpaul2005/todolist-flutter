import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

/// Mirrors Auth.tsx: handleSubmit + the same FirebaseAuthException → message
/// mapping. Sign-in success itself isn't tracked here — main.dart's
/// AuthGate listens to FirebaseAuth.authStateChanges() directly and swaps
/// to TodoPage, same as the web app's onAuthStateChanged in App.tsx.
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState());

  void toggleMode() {
    emit(state.copyWith(isLogin: !state.isLogin, errorMessage: null));
  }

  Future<void> submit({required String email, required String password}) async {
    emit(state.copyWith(status: AuthStatus.loading, errorMessage: null));
    try {
      if (state.isLogin) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      }
      emit(state.copyWith(status: AuthStatus.idle));
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'email-already-in-use':
          message = 'Email already in use. Please login instead.';
          break;
        case 'user-not-found':
          message = 'User not found. Please register first.';
          break;
        case 'wrong-password':
          message = 'Incorrect password.';
          break;
        case 'too-many-requests':
          message = 'Too many attempts. Please try again later.';
          break;
        default:
          message = e.message ?? 'Authentication failed';
      }
      emit(state.copyWith(status: AuthStatus.error, errorMessage: message));
    }
  }
}
