import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';

class SaleNameAndDescriptionAndPriceDetailsView extends StatelessWidget {
  const SaleNameAndDescriptionAndPriceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          const SizedBox(height: 20,),
          SizedBox(
            width: MediaQuery.sizeOf(context).width*0.85,
            height: MediaQuery.sizeOf(context).height*0.25,
            child:CachedNetworkImage(
                    width: MediaQuery.sizeOf(context).width*0.3,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    placeholder: (context, url) => CircularProgressIndicator(color: Reusable.reuseColor,),
                    imageUrl: 'https://th.bing.com/th/id/OIP.q9rSFJg-4OsXLpF-Ta8i1QHaHa?rs=1&pid=ImgDetMain') ,
          ),
          const SizedBox(height: 30,),
          // -------------------------------------------------------------------------------------------------------------------
                       Align(
                        alignment: Alignment.centerLeft,
                        child:  Text('Description :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),)
                        ),
                        const SizedBox(height: 8,),
                       Text(
                        'New sale on Rexona cream as you know our company has many sales on our products, Now you can buy 2 and get 1 free of charge, There is also free delivery ! ',
                        style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                        ),
                       const SizedBox(height: 20,),
              // -------------------------------------------------------------------------------------------------------------------
                       Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Your Sale Subcategory :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700))),
                        const SizedBox(height: 8,),
                        Text(
                        'Beauty',
                        style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                        ),
                        const SizedBox(height: 20,),
              // -------------------------------------------------------------------------------------------------------------------
                       Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Your Sale Price :',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700))),
                        const SizedBox(height: 8,),
                        Text(
                        '20 L.E',
                        style:TextStyle(fontStyle: FontStyle.italic,fontSize: 15.sp) 
                        ),
                       const SizedBox(height: 60,),
               //--------------------------------------------------------------------------------------------------------
                      ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: Reusable.reuseColor
                        ),
                        onPressed: () {
                        
                      }, 
                      child:const Text('Delete this Sale',style: TextStyle(color: Colors.white),) )      
                        
                        
        ],
      ),
    );
  }
}