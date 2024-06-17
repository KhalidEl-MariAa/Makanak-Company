import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/payScreen/data/paymob_manager.dart';
import 'package:makanak_company/features/payScreen/presentation/view/widgets/actionButtons/custom_button.dart';

class PayByCardAction extends StatelessWidget {
  const PayByCardAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomPayButton(
      textOfButton: 'Card',icon: Icons.payment_sharp,
      onTapPay: () async {
        try{

      await PayMobManager().paymentKeyReqForCards(
        amountcents:'100' , userEmail: 'firstcliuser@gmail.com',
         firstName: 'Yasser', lasttName: 'Elmaria', phoneNumber: '01061942646');
        }
    

        catch(e){
        // ignore: use_build_context_synchronously
        checkAndHandlePayCardExeptions(e, context);
        }
      },
      );
  }

  void checkAndHandlePayCardExeptions(Object e, BuildContext context) {
    if(e is DioException){
      switch(e.type){
        
        case DioExceptionType.connectionTimeout:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'Sorry for that, try again!');
          break;
        case DioExceptionType.sendTimeout:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'Sorry for that, try again!');
          break;
        case DioExceptionType.receiveTimeout:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'Sorry for that, try again!');
          break;
        case DioExceptionType.badCertificate:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'Sorry for that, try again!');
          break;
        case DioExceptionType.badResponse:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'Sorry for that, try again!');
          break;
        case DioExceptionType.cancel:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: "Don't cancel the request be patient!");
          break;
        case DioExceptionType.connectionError:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'There was an error in your internet connection!');
          break;
        case DioExceptionType.unknown:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: '$e');
          break;
    
        default:
        Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'Unexpected error sorry for that, try again!');
        
      }
    
      
      }
    else{
      Reusable.showAwesomeDialogForDioExceptions(context: context, body: 'Sorry for that, try again!');
    }
  }
}