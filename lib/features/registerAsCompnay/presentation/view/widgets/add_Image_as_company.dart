// ignore_for_file: prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'dart:io';


import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:makanak_company/core/reusable.dart';

class AddImageViewAsCompany extends StatefulWidget {
  const AddImageViewAsCompany({super.key});

  @override
  State<AddImageViewAsCompany> createState() => _AddImageViewState();
}
 File? imagefile;
  var imagepicker= ImagePicker();
   var pickedimag;
class _AddImageViewState extends State<AddImageViewAsCompany> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
       AwesomeDialog(context: context,
       title: 'Choose',
       dialogType: DialogType.noHeader,
       btnOk:  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Reusable.reuseColor
                     ),
                     onPressed: ()async {
                        try{
                         pickedimag= await imagepicker.pickImage(source: ImageSource.camera);
                       if (pickedimag!=null) {
                         imagefile=File(pickedimag.path);
                         setState(() {
                           
                         });
                         Navigator.pop(context);
                         }
                       else{}
                       }
                       catch(e){
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('There was an error..try again')));
                       }
                     },
                   
                     child: const Icon(Icons.camera_alt,color: Colors.white,)
                                              ),
                      btnCancel:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                       backgroundColor: Reusable.reuseColor
                     ),
                     onPressed: ()async {
                       try{ 
                       pickedimag= await imagepicker.pickImage(source: ImageSource.gallery);
                       if (pickedimag!=null) {
                         imagefile=File(pickedimag.path);
                         setState(() {
                           
                         });
                         Navigator.pop(context);
                        
                          }
                       
                       else{}}
                       catch(e){
                         ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('There was an error..try again $e')));
                       }
                       }
                     ,
                      child:  const Icon(Icons.add_photo_alternate,color: Colors.white,)
                      
                      )).show();
     },
     child: CircleAvatar(
       backgroundColor: const Color.fromARGB(255, 231, 222, 222),
                 foregroundImage: imagefile==null?  null : FileImage(imagefile!)  ,
                 radius: 55.sp,
                 child: imagefile!=null? null : Icon(
                 Icons.add ,size: 50.sp,)
                   ),
          );
    
  }
}