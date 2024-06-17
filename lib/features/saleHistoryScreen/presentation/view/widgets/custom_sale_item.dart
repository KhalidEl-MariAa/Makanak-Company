import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/itemofSaleHistoryDetailsScreen/presentation/view/item_of_sale_history_details_screen.dart';

class CustomSaleItem extends StatelessWidget {
  const CustomSaleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemOfSaleHistoryDetailsScreen(),));
      },
      child: Row(
                children: [
                  CachedNetworkImage(
                    height: 100.sp,
                    width: MediaQuery.sizeOf(context).width*0.3,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    placeholder: (context, url) => CircularProgressIndicator(color: Reusable.reuseColor,),
                    imageUrl: 'https://th.bing.com/th/id/OIP.q9rSFJg-4OsXLpF-Ta8i1QHaHa?rs=1&pid=ImgDetMain'),
                    Container(
                      constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width*0.7),
                      child:  Column(
                        children: [Text('Rexona Sale ',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                        const Text(
                       'New sale on Rexona cream as you know our company has many sales on our products, Now you can buy 2 and get 1 free of charge, There is also free delivery! ',
                        maxLines: 2,overflow: TextOverflow.ellipsis),
                        const SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('20 L.E',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold))),
                        )
                       
                          ],
                      ),
                    )
                ],
              ),
    );
  }
}