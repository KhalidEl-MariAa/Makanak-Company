
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/editProfileScreen/view/edit_profile_screen_view.dart';

class RowOfActionsButtonsView extends StatelessWidget {
  const RowOfActionsButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Reusable.reuseColor
                      ),
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const EditProfileScreenView() ,));
                      } ,
                       child: const Text('Edit profile',style: TextStyle(color: Colors.white),),
                       ),
                       SizedBox(width: 10.sp,),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                        backgroundColor: Reusable.reuseColor
                      ),
                      onPressed:(){} ,
                       child: const Text('Sign Out',style: TextStyle(color: Colors.white)),
                       )
                  ],
                );
  }
}