

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Reusable{
  static Color reuseColor =  const Color.fromRGBO(51, 105, 30, 1);
  static TextStyle titleStyle=  TextStyle(color: Reusable.reuseColor,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500);
  static int currentindex=0;

  static void showAwesomeDialogForDioExceptions ({required context ,required String body}){
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      body: Text(body),
      btnOk: ElevatedButton(onPressed: () {
        
      },
      style: ElevatedButton.styleFrom(backgroundColor: reuseColor),child:const Text('Ok',style: TextStyle(color: Colors.white),),),


      // const Text('Ok',style: TextStyle(color: Colors.white),),
      
    ).show();
  }
 }
