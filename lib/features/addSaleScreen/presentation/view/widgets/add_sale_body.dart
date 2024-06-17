import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/custom_text_field.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/addSaleScreen/presentation/view/widgets/add_sale_image.dart';
import 'package:makanak_company/features/addSaleScreen/presentation/view/widgets/subcategory_drop_down_menu.dart';


class AddScreenBody extends StatefulWidget {
  const AddScreenBody({super.key});

  @override
  State<AddScreenBody> createState() => _AddScreenBodyState();
}
GlobalKey<FormState> globkey= GlobalKey();
class _AddScreenBodyState extends State<AddScreenBody> {
  @override
  Widget build(BuildContext context) {
    
    return  SliverFillRemaining(
      hasScrollBody: false,
      child: Form(
        key: globkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Add your Sale Image:',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
              const SizedBox(height: 10,),
              const AddSaleImage(),
              const SizedBox(height: 20,),
//---------------------------------------------------------------------------------------------------------------------
           Align(
                alignment: Alignment.centerLeft,
                child: Text('Add your Sale Title:',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)), 
                const SizedBox(height: 10,)  ,
                CustomTextField(
                hinttext:  'Sale title', obscureText: false, valTrue: true,
                keyboardType: TextInputType.number,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                          return 'Please enter your sale title';
                        }
                        return null;
                },)   ,
                const SizedBox(height: 20,),
//----------------------------------------------------------------------------------------------   
             Align(
                alignment: Alignment.centerLeft,
                child: Text('Add your Sale Description:',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)), 
                const SizedBox(height: 10,)  ,
                CustomTextField(hinttext:  'Sale description', obscureText: false, valTrue: true,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                          return 'Please enter your sale description';
                        }
                        return null;
                },)   ,
                const SizedBox(height: 20,),
        //------------------------------------------------------------------------------------------------------------------------
               DropDownMenuOfSubCategory(onChangedDropMenuOfSubcategories: (p0) {
                 
               },
               dropMenuSubCatValidator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                          return 'Please select your sale category';
                        }
                        return null;
                }),
                const SizedBox(height: 20,),
        //---------------------------------------------------------------------------------------------------
               Align(
                alignment: Alignment.centerLeft,
                child: Text('Add your Sale Price:',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)), 
                const SizedBox(height: 10,)  ,
                CustomTextField(
                hinttext:  'Sale price', obscureText: false, valTrue: true,
                keyboardType: TextInputType.number,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                          return 'Please enter your sale price';
                        }
                        return null;
                },)   ,
                const SizedBox(height: 20,),
        //----------------------------------------------------------------------------------------------------------------------------
         ElevatedButton(
                        onPressed: () {
                          if(globkey.currentState!.validate()){
                          if(pickedimag==null){
                            AwesomeDialog(
                              context: context,
                              title: 'Please choose Sale image',
                              dialogType: DialogType.error,
                              btnOkColor: Reusable.reuseColor,
                              btnOk: Center(child: Container(
                                height: 30,
                                color: Reusable.reuseColor,
                                child: const Center(child: Text('OK',style: TextStyle(color: Colors.white),)))),
                              btnOkOnPress:() {
                                Navigator.pop(context);
                              }, ).show();
                          }}
                        },
                      style: ElevatedButton.styleFrom(backgroundColor: Reusable.reuseColor), 
                      child: const Text('Add',style: TextStyle(color: Colors.white),)
                      )
                    
            ],
          ),
        ),
      ),
    );
  }
}