import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesHistoryScreenAppBar extends StatelessWidget {
  const SalesHistoryScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
            title: Text('Sales History',
            style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),)
    );
  }
}