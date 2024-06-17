import 'package:flutter/material.dart';
import 'package:makanak_company/features/auth_Screen/presentation/view/widgets/auth_bottom_nav_bar.dart';
import 'package:makanak_company/features/registerAsCompnay/presentation/view/register_screen.dart';
import 'package:makanak_company/features/signInAsCompany/presentation/view/sign_in_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}
int currentind=0;
var pagees = const [RegisterScreen(),SignInScreen()];

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pagees[currentind],
        bottomNavigationBar: AuthBottomNavBar(currentindex: currentind, onTap: (p0) {
          currentind=p0;
          setState(() {
            
          });
        },),
      ),
    );
  }
}