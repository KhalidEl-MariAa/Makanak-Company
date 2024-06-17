import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/addSaleScreen/presentation/view/add_sale_screen.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            centerTitle: true,
            title: Text('Home ',
            style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
            actions: [ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddSaleScreen(),));
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Reusable.reuseColor
            ),
            child: const Text('Add Sale',style: TextStyle(color: Colors.white),),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.008,)],
          );
  }
}