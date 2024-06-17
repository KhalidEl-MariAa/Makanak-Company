import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayScreenAppBar extends StatelessWidget {
  const PayScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
       centerTitle: true,
            title: Text('Subscription',
            style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),)
    );
  }
}