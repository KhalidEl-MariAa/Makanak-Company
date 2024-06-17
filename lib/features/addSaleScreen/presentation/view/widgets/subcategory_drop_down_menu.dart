import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';

class DropDownMenuOfSubCategory extends StatelessWidget {
  const DropDownMenuOfSubCategory({
    super.key,
    required this.onChangedDropMenuOfSubcategories,
    this.dropMenuSubCatValidator});
final void Function(dynamic)? onChangedDropMenuOfSubcategories;
final String? Function(dynamic)? dropMenuSubCatValidator;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: FractionalOffset.topLeft,
          child: Text('Choose your Sale category: ',
          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
        const SizedBox(height: 20,),
          DropdownButtonFormField(
                    validator: dropMenuSubCatValidator,    
                    style:const TextStyle(fontWeight: FontWeight.normal,color: Colors.black),
                    decoration: InputDecoration(
                      
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Reusable.reuseColor)),
                      border: const OutlineInputBorder()
                    ),          
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(25),
                    onChanged: onChangedDropMenuOfSubcategories,
                    icon: const Icon(Icons.arrow_drop_down_sharp,size: 40,),
                    dropdownColor: Reusable.reuseColor,
                    hint: const Text('Choose your sale category'),
                    items: const [DropdownMenuItem(
                      
                      child: Text('Beauty'))],
                     ),
    ]);
  }
}