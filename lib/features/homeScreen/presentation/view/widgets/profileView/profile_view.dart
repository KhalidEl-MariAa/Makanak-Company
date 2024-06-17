import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/features/homeScreen/presentation/view/widgets/row_of_actions.dart';

class CompanyProfileView extends StatelessWidget {
  const CompanyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [ CircleAvatar(
                  radius: 90.sp,
                  foregroundImage: const AssetImage('assets/makanaklogo.png')),
                  const SizedBox(height: 20,),
                  Container(
                    constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width*0.9),
                    child: const Text('khalid El-Maria')),
                  Container(
                    constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width*0.9),
                    child: const Text('khalidmaria13@gmail.com')),
                  const Text('01061942646'),
                  const SizedBox(height: 20,),
                  const RowOfActionsButtonsView(),
                  SizedBox(height: 20,),
      
      //-------------------------------------------------------------------------------------------------------------
      
                  Align(
                     alignment: Alignment.centerLeft,
                     child:  Text('Description :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),)
                          ),
                  Text(
                          'Australian deodorant and antiperspirant brand owned by British conglomerate Unilever, we have our branch in Egypt since 1985',
                          style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                          ),
                         const SizedBox(height: 20,),
      
      //---------------------------------------------------------------------------------------------
      
                         Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Address :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700))),
                          const SizedBox(height: 8,),
                          Text(
                          'القاهره - المعادي - شارع 9 - امام محطة المترو',
                          style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                          ),
      
                  ],
      ),
    );
    
    
  }
}