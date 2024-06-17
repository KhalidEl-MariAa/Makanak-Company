import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/registerAsCompnay/presentation/view/widgets/places.dart';

class DropDownMenuOfPlaceView extends StatefulWidget {
  const DropDownMenuOfPlaceView({super.key, required this.onChangedDropMenuOfMohafza, this.dropMenuMohafzaValidator});
final void Function(dynamic)? onChangedDropMenuOfMohafza;
final String? Function(dynamic)? dropMenuMohafzaValidator;

  @override
  State<DropDownMenuOfPlaceView> createState() => _DropDownMenuOfPlaceViewState();
}
String? mohafzaValue;
String? region;
class _DropDownMenuOfPlaceViewState extends State<DropDownMenuOfPlaceView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: FractionalOffset.topLeft,
          child: Text('Choose the place of your Company: ',
          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
        const SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SizedBox(
              width: MediaQuery.sizeOf(context).width*0.40,
               child: DropdownButtonFormField(
                           validator: widget.dropMenuMohafzaValidator,
                           style: const TextStyle(fontWeight: FontWeight.normal,color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Reusable.reuseColor)),
                            border: const OutlineInputBorder()
                          ),          
                          isExpanded: true,
                          borderRadius: BorderRadius.circular(25),
                          onChanged: (value) {
                            mohafzaValue=value;
                            setState(() {
                              
                            });
                          },
                          icon: const Icon(Icons.arrow_drop_down_sharp,size: 40,),
                          
                          hint: const Text('Governorate'),
                          items: const [
                            DropdownMenuItem(
                              value: 'Cairo',
                              child: Text('Cairo')),
                               DropdownMenuItem(
                              value: 'Alexandria',
                              child: Text('Alexandria'))

                            ],
                           ),
             ),
//---------------------------------------------------------------------------------------------------
             SizedBox(
              width: MediaQuery.sizeOf(context).width*0.40,
               child: DropdownButtonFormField(
                           validator: widget.dropMenuMohafzaValidator,
                           style: const TextStyle(fontWeight: FontWeight.normal,color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Reusable.reuseColor)),
                            border: const OutlineInputBorder()
                          ),          
                          isExpanded: true,
                          borderRadius: BorderRadius.circular(25),
                          onChanged: (value) {
                            region=value.toString();
                            
                          },
                          icon: const Icon(Icons.arrow_drop_down_sharp,size: 40,),
                          
                          hint: const Text('Region'),
                          items: mohafzaValue==null? []: Places.place[mohafzaValue]!.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e) )).toList()
                          
                          )
             ),
            
           ],
         ),
         
      ],
    );
  }
}