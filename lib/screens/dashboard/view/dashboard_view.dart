// screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../../view_model/auth_view_model.dart';
import '../../login/view/login_view.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final email = Provider.of<AuthViewModel>(context).user?.email ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dashboard')),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              final authViewModel = Provider.of<AuthViewModel>(context, listen: false);
              authViewModel.logoutUser();
              Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(20),
            Center(
              child: Text(
                'Welcome, $email!',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
