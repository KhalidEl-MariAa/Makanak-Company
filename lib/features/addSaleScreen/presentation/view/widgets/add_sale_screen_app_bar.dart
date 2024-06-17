import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddSaleScreenAppBar extends StatelessWidget {
  const AddSaleScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(title:Text('Add sale',style:TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),) ,
      centerTitle: true,);
  }
}