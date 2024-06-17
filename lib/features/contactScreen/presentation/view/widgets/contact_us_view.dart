import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:makanak_company/core/custom_text_field.dart';
import 'package:makanak_company/core/reusable.dart';

class EmailContactView extends StatefulWidget {
  const EmailContactView({super.key});

  @override
  State<EmailContactView> createState() => _EmailContactViewState();
}
late String body;
class _EmailContactViewState extends State<EmailContactView> {
  @override
  Widget build(BuildContext context) {
    return  SliverFillRemaining(
       hasScrollBody: false,
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal:8.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           
           children: [
           
            Padding(
             padding: const EdgeInsets.symmetric(horizontal:5.0),
             child: CustomTextField(
               valTrue: false,
               onchange: (p0) {
                 body=p0;
               },
               hinttext: 'What happend?', obscureText: false)
           ),
           const SizedBox(height: 20,),
           ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: Reusable.reuseColor
             ),
             onPressed: ()async {
               
                 try{
                    var email=Email(
                     subject: 'Email from cv app user',
                     recipients: ['khalidmaria13@gmail.com'],
                     body:body 
                    );
                    await FlutterEmailSender.send(email);
                 }
                 catch(e){
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('There was an error, try later $e')));
                 }
               
             },
              child: const Text(
               'Send' ,
               style: TextStyle(color: Colors.white),
               ))],
         ),
       ),
     );
  }
}