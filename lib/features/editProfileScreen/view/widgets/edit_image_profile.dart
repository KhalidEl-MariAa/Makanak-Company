// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:makanak_company/core/reusable.dart';

class EditImageProfile extends StatefulWidget {
  const EditImageProfile({super.key});

  @override
  State<EditImageProfile> createState() => _EditImageProfileState();
}
 File? editedImageFile;
  var imagepicker= ImagePicker();
   // ignore: prefer_typing_uninitialized_variables
   var editedPickedImag;
class _EditImageProfileState extends State<EditImageProfile> {
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
                         editedPickedImag= await imagepicker.pickImage(source: ImageSource.camera);
                       if (editedPickedImag!=null) {
                         editedImageFile=File(editedPickedImag.path);
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
                       editedPickedImag= await imagepicker.pickImage(source: ImageSource.gallery);
                       if (editedImageFile!=null) {
                         editedImageFile=File(editedPickedImag.path);
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
                 foregroundImage: editedImageFile==null?  null : FileImage(editedImageFile!)  ,
                 radius: 55.sp,
                 child: editedImageFile!=null? null : Icon(
                 Icons.add ,size: 50.sp,)
                   ),
          );
  }
}