import 'package:flutter/material.dart';
import 'package:makanak_company/features/contactScreen/presentation/view/contact_us_screen.dart';
import 'package:makanak_company/features/homeScreen/presentation/view/home_screen_view.dart';
import 'package:makanak_company/features/mainScreen/presentation/view/widgets/main_screen_bottom_nav_bar.dart';
import 'package:makanak_company/features/payScreen/presentation/view/pay_screen.dart';
import 'package:makanak_company/features/saleHistoryScreen/presentation/view/sales_history_screen.dart';

class MainScreenContents extends StatefulWidget {
  const MainScreenContents({super.key});

  @override
  State<MainScreenContents> createState() => _MainScreenContentsState();
}
int currentIndex =0;
List pages= [const HomeScreenView(),const SalesHistoryScreen(),const ContactUsScreen(),const PayScreen()];
class _MainScreenContentsState extends State<MainScreenContents> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: MainScreenBottomNavBar(
          currentIndex:currentIndex ,
           onTap: (p0) {
          currentIndex=p0;
          setState(() {
            
          });
        },),
      ),
    );
  }
}