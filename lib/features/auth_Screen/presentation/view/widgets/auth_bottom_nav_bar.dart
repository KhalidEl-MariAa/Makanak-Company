
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';
class AuthBottomNavBar extends StatelessWidget {
  const AuthBottomNavBar({super.key,required this.currentindex,required this.onTap});
 final int currentindex;
 final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          onTap: onTap,
          backgroundColor: Reusable.reuseColor,
          currentIndex: currentindex,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold) ,
          unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic,),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1,size: currentindex==0?30.sp:20.sp,),label: 'New User'),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: currentindex==1?30.sp:20.sp,),label: 'Log In')
        ]);
  }
}