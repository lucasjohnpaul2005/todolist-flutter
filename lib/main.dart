import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/autoroutes/routes.dart';
import 'core/autoroutes/routes.gr.dart';
import 'core/injection_container.dart' as gi;
import 'firebase_options.dart';
import 'theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await gi.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    // Reactive redirect on sign-in/sign-out, same as App.tsx's
    // onAuthStateChanged. AuthGuard handles the case of someone navigating
    // to a guarded route directly; this handles the app already being open.
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        _appRouter.replaceAll([const TodoRoute()]);
      } else {
        _appRouter.replaceAll([const AuthRoute()]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TodoList',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: _appRouter.config(),
      builder: (context, child) => Container(
        color: AppColors.ink900,
        child: child,
      ),
    );
  }
}
