import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../theme/app_theme.dart';
import 'cubit/auth_cubit.dart';
import 'cubit/auth_state.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  static const route = '/auth';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: const _AuthView(),
    );
  }
}

class _AuthView extends StatefulWidget {
  const _AuthView();

  @override
  State<_AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<_AuthView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(-0.7, -0.9),
            radius: 1.3,
            colors: [
              AppColors.primary.withValues(alpha: 0.22),
              AppColors.ink900,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(maxWidth: 400),
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: AppColors.paper,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: 32,
                      offset: const Offset(0, 18),
                    ),
                  ],
                ),
                child: BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          state.isLogin ? 'Login' : 'Create Account',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fraunces(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          state.isLogin
                              ? 'Sign in to access your tasks'
                              : 'Register to start managing your tasks',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 14, color: AppColors.gray500),
                        ),
                        const SizedBox(height: 24),
                        TextField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: const [AutofillHints.email],
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.mail_outline, size: 20),
                            hintText: 'Enter your email',
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          autofillHints: [
                            state.isLogin
                                ? AutofillHints.password
                                : AutofillHints.newPassword,
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline, size: 20),
                            hintText: 'Enter your password',
                          ),
                        ),
                        if (state.errorMessage != null) ...[
                          const SizedBox(height: 14),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFBDCDD),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              state.errorMessage!,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  color: AppColors.danger, fontSize: 14),
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: state.status == AuthStatus.loading
                              ? null
                              : () => context.read<AuthCubit>().submit(
                                    email: _emailController.text.trim(),
                                    password: _passwordController.text,
                                  ),
                          child: state.status == AuthStatus.loading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2, color: Colors.white),
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                        state.isLogin
                                            ? Icons.login
                                            : Icons.person_add_alt,
                                        size: 18),
                                    const SizedBox(width: 8),
                                    Text(state.isLogin ? 'Login' : 'Register'),
                                  ],
                                ),
                        ),
                        TextButton(
                          onPressed: () =>
                              context.read<AuthCubit>().toggleMode(),
                          child: Text(
                            state.isLogin
                                ? "Don't have an account? Register"
                                : 'Already have an account? Login',
                            style:
                                GoogleFonts.inter(color: AppColors.primaryDark),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
