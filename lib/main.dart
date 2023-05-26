import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_registration_demo/screens/dashboard/view/dashboard_view.dart';
import 'package:login_registration_demo/screens/login/view/login_view.dart';
import 'package:login_registration_demo/screens/registration/view/registration_view.dart';
import 'package:login_registration_demo/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(
          create: (_) => AuthViewModel(FirebaseAuth.instance),
        ),
      ],
      child: MaterialApp(
        title: 'Login & Registration',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (context) => const LoginScreen(),
          RegisterScreen.routeName: (context) => const RegisterScreen(),
          DashboardScreen.routeName: (context) => const DashboardScreen(),
        },
      ),
    );
  }
}
