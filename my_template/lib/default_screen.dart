import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'components/app_bottom_nav_bar.dart';
import 'components/app_header.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'screen1_page.dart';
import 'screen2_page.dart';
import 'screen3_page.dart';
import 'screen4_page.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int currentIndex = 0;

  final List<String> headerTitles = const [
    'MyBetterness',
    'Screen1',
    'Screen2',
    'Screen3',
    'Screen4',
  ];

  final List<Widget> tabs = const [
    HomePageContent(),
    Screen1Page(),
    Screen2Page(),
    Screen3Page(),
    Screen4Page(),
  ];

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    if (!context.mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd9ecff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader(
                title: headerTitles[currentIndex],
                onLogout: () {
                  logout(context);
                },
              ),
              const SizedBox(height: 20),
              Expanded(
                child: IndexedStack(index: currentIndex, children: tabs),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
