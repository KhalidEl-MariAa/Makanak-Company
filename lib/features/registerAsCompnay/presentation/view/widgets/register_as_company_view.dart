import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/custom_text_field.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/mainScreen/presentation/view/main_screen_view.dart';
import 'package:makanak_company/features/registerAsCompnay/presentation/view/widgets/add_Image_as_company.dart';
import 'package:makanak_company/features/registerAsCompnay/presentation/view/widgets/categories_drop_down_menu.dart';
import 'package:makanak_company/features/registerAsCompnay/presentation/view/widgets/choose_place.dart';


class RegisterBodyView extends StatefulWidget {
  const RegisterBodyView({super.key});

  @override
  State<RegisterBodyView> createState() => _RegisterBodyViewState();
}
bool isSeen=false;
GlobalKey<FormState> globalKey1= GlobalKey();
TextEditingController phonenumber = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController retypePassword = TextEditingController();
class _RegisterBodyViewState extends State<RegisterBodyView> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Form(
          key: globalKey1,
          child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: FractionalOffset.topLeft,
                      child: Text('Sign Up',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
                  const AddImageViewAsCompany(),
                  SizedBox(height: 20.sp,),

//-------------------------------------------------------------------------------------------------------
                  
                  CustomTextField(
                  validator: (value) {
            if (value == null || value.isEmpty) {
                      return 'Please enter your Name';
                    }
                    return null;
          },
                  valTrue: true,
                  obscureText: false,
                  hinttext: 'Enter your Full Name',prefixIcon: const Icon(Icons.note_alt_outlined),),
                 const SizedBox(height: 20,),

//--------------------------------------------------------------------------------------------------------
                  
                  CustomTextField(
                  validator: (value) {
            if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
          },
                  valTrue: true,
                  obscureText: false,
                  hinttext: 'Enter your Email',prefixIcon: const Icon(Icons.email),keyboardType: TextInputType.emailAddress),
                 SizedBox(height: 20.sp,),

//--------------------------------------------------------------------------------------------------------
                
                 CustomTextField(
                  controller: phonenumber,
                  validator: (value) {
            if (value == null || value.isEmpty) {
                      return 'Please enter your Phone';
                    }
            else if(phonenumber.text.length!=11){
              return "Must be 11 numbers";
            }
            {}
                    return null;
          },
                  valTrue: true,
                  obscureText: false,
                  hinttext: 'Enter your Phone Number',prefixIcon: const Icon(Icons.phone_android),keyboardType: TextInputType.phone,),
                 const SizedBox(height: 20,),

 //-------------------------------------------------------------------------------------------------------       
                  
                  CustomTextField(
                    maxLines:1,
                    controller: password,
                    validator: (value) {
            if (value == null || value.isEmpty ) {
                      return 'Please enter password';
                    }
                    return null;
          },
                    valTrue: true,
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
                  ),
                  ),
                  const SizedBox(height: 20,),

//----------------------------------------------------------------------------------------------------------------
                   
                   CustomTextField(
                    maxLines:1,
                    controller: retypePassword,
                    validator: (value) {
            if (value == null || value.isEmpty ) {
                      return 'Please Enter your password again';
                    }
                    return null;
          },
                    valTrue: true,
                    obscureText: isSeen? false:true ,
                    keyboardType: TextInputType.visiblePassword,
                  hinttext: 'Retype Your Password',
                  prefixIcon: const Icon(Icons.key),
                  suffixIcon: GestureDetector(
                    onTap:() {
                      isSeen=!isSeen;
                      setState(() {
                        
                      });
                    }, 
                    child: isSeen? const Icon(Icons.hide_source):const Icon(Icons.remove_red_eye),
                  ),),
                  const SizedBox(height: 40,),

//---------------------------------------------------------------------------------------------------------------
                  
                  DropDownMenuOfCategoriesView(
                    dropMenuCatValidator: (p0) {
                      if (p0 == null || p0.isEmpty ) {
                      return 'Please Choose the company Category';
                    }
                    return null;
                    },
                    onChangedDropMenuOfCategories: (p0) {
                      
                    },
                    ),
                    const SizedBox(height: 20,),

//--------------------------------------------------------------------------------------------------------------
                   
                   DropDownMenuOfPlaceView(onChangedDropMenuOfMohafza: (p0) {
                     
                   },),
                   const SizedBox(height: 20,),
//--------------------------------------------------------------------------------------------------------------
                     Align(
          alignment: FractionalOffset.topLeft,
          child: Text('Type description for your Company: ',
          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
          const SizedBox(height: 20,),
          CustomTextField(
            obscureText: false,
            maxLines: 15,
            hinttext: 'Description', valTrue: true,validator: (p0) {
             if (p0 == null || p0.isEmpty ) {
                      return 'Please type the company description';
                    }
                    return null;
          },),
          const SizedBox(height: 40,),

//--------------------------------------------------------------------------------------------------------------------
          
                  
                  Container(
                    width: 250.sp,
                    color: Reusable.reuseColor,
                    child: TextButton(
                      onPressed: (){
                        if(globalKey1.currentState!.validate()){
                         if(password.text!=retypePassword.text){
                         showPasswordMatchErrorDialog(context);
                         }
                         else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreenView(),));
                          }
                        }
                      },
                       child: const Text('Sign Up',style: TextStyle(color: Colors.white),))
                    ),
                    const SizedBox(height: 10,),

//--------------------------------------------------------------------------------------------------------------------------------------

                    
                   
                  ],
                ),
        
      ),
    );
  }

  void showPasswordMatchErrorDialog(BuildContext context) {
    AwesomeDialog(
       context: context,
       title: 'Passwords must match',
       dialogType: DialogType.error,
       btnOk:ElevatedButton(
        style: ElevatedButton.styleFrom(
         backgroundColor: Reusable.reuseColor),
        onPressed: () => Navigator.pop(context),
        child: const Text('Ok',style: TextStyle(color: Colors.white),),
        )
          ).show();
  }
}