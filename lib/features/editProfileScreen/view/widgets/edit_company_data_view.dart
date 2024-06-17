
import 'package:flutter/material.dart';
import 'package:makanak_company/core/custom_text_field.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/editProfileScreen/view/widgets/edit_image_profile.dart';

class EditCompanyDataView extends StatelessWidget {
  const EditCompanyDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const EditImageProfile(),
                    const SizedBox(height: 20,),
                    const CustomTextField(suffixIcon: Icon(Icons.phone),hinttext: 'Put your new Number', obscureText: false, valTrue: false),
                    const SizedBox(height: 20,),
                    const CustomTextField(suffixIcon: Icon(Icons.email),hinttext: 'Put your new Email', obscureText: false, valTrue: false),
                    const SizedBox(height: 20,),
                    const CustomTextField(suffixIcon: Icon(Icons.note_alt_outlined),hinttext: 'Put your new Username', obscureText: false, valTrue: false),
                    const SizedBox(height: 20,),
                    const CustomTextField(suffixIcon: Icon(Icons.key),hinttext: 'Enter your new password', obscureText: false, valTrue: false),
                    const SizedBox(height:20),
                    const CustomTextField(suffixIcon: Icon(Icons.description),hinttext: 'Enter your new description', obscureText: false, valTrue: false),
                    const SizedBox(height:20),
                    const CustomTextField(suffixIcon: Icon(Icons.location_on),hinttext: 'Enter your new description', obscureText: false, valTrue: false),
                    const SizedBox(height: 20,),
                    

                    EditActionButton(saveOnTap: () {
                      
                    },)]
                ),
              ),
            );
  }
}
class EditActionButton extends StatelessWidget {
  const EditActionButton({super.key, this.saveOnTap});
final void Function()? saveOnTap;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
                      onPressed: saveOnTap,
                      style: ElevatedButton.styleFrom(backgroundColor: Reusable.reuseColor), 
                    child: const Text('Save',style: TextStyle(color: Colors.white),) )
                  ;
  }
}