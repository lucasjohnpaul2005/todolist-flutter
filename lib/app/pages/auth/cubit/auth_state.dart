import 'package:equatable/equatable.dart';

enum AuthStatus { idle, loading, error }

class AuthState extends Equatable {
  final AuthStatus status;
  final String? errorMessage;
  final bool isLogin; // true = login form, false = register form

  const AuthState({
    this.status = AuthStatus.idle,
    this.errorMessage,
    this.isLogin = true,
  });

  AuthState copyWith({
    AuthStatus? status,
    String? errorMessage,
    bool? isLogin,
  }) {
    return AuthState(
      status: status ?? this.status,
      errorMessage: errorMessage,
      isLogin: isLogin ?? this.isLogin,
    );
  }

  @override
  List<Object?> get props => [status, errorMessage, isLogin];
}
