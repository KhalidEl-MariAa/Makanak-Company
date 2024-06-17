import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/custom_text_field.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/mainScreen/presentation/view/main_screen_view.dart';


class SignInAsCompanyBodyView extends StatefulWidget {
  const SignInAsCompanyBodyView({super.key});

  @override
  State<SignInAsCompanyBodyView> createState() => _SignInAsCompanyBodyViewState();
}
bool isSeen=false;
GlobalKey<FormState> globalKey2= GlobalKey();
TextEditingController phonenumbercont=TextEditingController();
class _SignInAsCompanyBodyViewState extends State<SignInAsCompanyBodyView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Form(
        key: globalKey2,
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 90.sp,
                    foregroundImage: const AssetImage('assets/makanaklogo.png')),
                  SizedBox(height: 40.sp,),
                  Align(
                    alignment: FractionalOffset.topLeft,
                    child: Text('Welcome Again!',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
                
                SizedBox(height: 20.sp,),

//--------------------------------------------------------------------------------------------------------------------------
                
                CustomTextField(
                controller: phonenumbercont,
                maxLines: 1,
                valTrue: true,
                validator: (value) {
          if (value == null || value.isEmpty) {
                    return 'Please enter your Phone Number';
                  }
          else if (phonenumbercont.text.length<11 && phonenumbercont.text.length>11){
                return 'Must be 11 numbers';
          }
                  return null;
        },
                obscureText: false,
                hinttext: 'Enter your Phone Number',
                prefixIcon: const Icon(Icons.phone_android),keyboardType: TextInputType.phone,
                ),
               SizedBox(height: 20.sp,),

 //----------------------------------------------------------------------------------------------------------------

                CustomTextField(
                  maxLines: 1,
                  valTrue: true,
                  validator: (value) {
          if (value == null || value.isEmpty) {
                    return 'Please enter your Password';
                  }
                  return null;
        },
                  obscureText: isSeen? false:true ,
                  keyboardType: TextInputType.visiblePassword,
                hinttext: 'Enter Your Password',
                prefixIcon: const Icon(Icons.key),
                suffixIcon: GestureDetector(
                  onTap:() {
                    isSeen=!isSeen;
                    setState(() {
                      
                    });
                  }, 
                  child: isSeen? const Icon(Icons.hide_source):const Icon(Icons.remove_red_eye),
                ),),
                
                SizedBox(height: 20.sp,),

//---------------------------------------------------------------------------------------------------------

                Container(
                  width: 250.sp,
                  color: Reusable.reuseColor,
                  child: TextButton(
                    onPressed: (){
                      if(globalKey2.currentState!.validate()){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreenView(),));
                      }
                     }
                    , child: const Text('Log In',style: TextStyle(color: Colors.white),))
                  ),
                  const SizedBox(height: 10,),
              
//-----------------------------------------------------------------------------------------------------------------------------
                  
                  GestureDetector(
                    child: Text(
                      'Forget your Password ?',
                    style: TextStyle(color: Reusable.reuseColor,
                    decoration: TextDecoration.underline,
                    ),),
                  )
        
                ],
              ),
      ),
    ) ;
  }
}