import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';

class CustomPayButton extends StatelessWidget {
  const CustomPayButton({super.key, required this.textOfButton, this.onTapPay, this.icon});
final String textOfButton;
final void Function()? onTapPay;
final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapPay,
      child: Container(
        constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width*0.60),
        height: MediaQuery.sizeOf(context).height*0.25,
        width: MediaQuery.sizeOf(context).width*0.60,
        decoration: BoxDecoration(
          color: Reusable.reuseColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,size: 40.sp,),
            const SizedBox(width: 10,),
            Text(textOfButton,style:TextStyle(
              fontSize: 15.sp,
              color: Colors.white,fontWeight: FontWeight.bold),),
          ],
        )),
      ),
    );
  }
}