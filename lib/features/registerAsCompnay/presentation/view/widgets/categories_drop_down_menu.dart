import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';

class DropDownMenuOfCategoriesView extends StatelessWidget {
  const DropDownMenuOfCategoriesView({super.key, required this.onChangedDropMenuOfCategories, this.dropMenuCatValidator});
final void Function(dynamic)? onChangedDropMenuOfCategories;
final String? Function(dynamic)? dropMenuCatValidator;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: FractionalOffset.topLeft,
          child: Text('Choose the category of your Company: ',
          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
        const SizedBox(height: 20,),
         DropdownButtonFormField(
                     validator: dropMenuCatValidator,
                     style: const TextStyle(fontWeight: FontWeight.normal,color: Colors.black),
                    decoration: InputDecoration(
                      
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Reusable.reuseColor)),
                      border: const OutlineInputBorder()
                    ),          
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(25),
                    onChanged: onChangedDropMenuOfCategories,
                    icon: const Icon(Icons.arrow_drop_down_sharp,size: 40,),
                    dropdownColor: Reusable.reuseColor,
                    hint: const Text('Choose your category'),
                    items: const [DropdownMenuItem(
                      
                      child: Text('Beauty'))],
                     ),
      ],
    );
  }
}