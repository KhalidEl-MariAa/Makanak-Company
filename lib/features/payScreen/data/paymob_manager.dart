


import 'package:dio/dio.dart';
import 'package:makanak_company/core/paymob_data.dart';
import 'package:url_launcher/url_launcher.dart';

class PayMobManager{

  Future<String> authenticationStep()async{

   var response = await Dio().post(
    PayMobData.authenticationApiUrl,
   data: {
    "api_key": PayMobData.apiKey
   });
   
   
   return response.data['token'];
  } 

  Future<List> getOrderId({required String amountInCent})async {

    String token = await authenticationStep();

    List reqValues = [];
    var response = await Dio().post(
      PayMobData.getOrderIdApiUrl,
      data: {
        "auth_token":token,
        "delivery_needed": "false",
        "amount_cents":amountInCent,
        "currency": "EGP",
        "items":[]

      }
      );
      reqValues.add(token);
      reqValues.add(response.data['id']);
      return reqValues;
  }
  
  Future<void> paymentKeyReqForCards({
    required String amountcents,
    required String userEmail,
    required String firstName,
    required String lasttName,
    required String phoneNumber})async{

    List reqValues = await getOrderId(amountInCent: amountcents);

    var response = await Dio().post(
      PayMobData.paymentKeyRequestCardApiUrl,
      data: {
      "auth_token":reqValues[0],
      "amount_cents":amountcents,
      "expiration": 3600,
      "order_id":reqValues[1].toString(),
       "billing_data": {
    "apartment": "NA", 
    "email": userEmail, 
    "floor": "NA", 
    "first_name": firstName, 
    "street": "NA", 
    "building": "NA", 
    "phone_number": phoneNumber, 
    "shipping_method": "NA", 
    "postal_code": "NA", 
    "city": "NA", 
    "country": "NA", 
    "last_name": lasttName, 
    "state": "NA"
  },
      "currency":"EGP",
      "integration_id":PayMobData.cardIntegrationId,
      
      }
    );

     launchUrl(Uri.parse(
      'https://accept.paymob.com/api/acceptance/iframes/802382?payment_token=${response.data['token'].toString()}'));





  }

  Future<void> paymentKeyReqForMobileWallets({
    required String amountcents,
    required String userEmail,
    required String firstName,
    required String lasttName,
    required String phoneNumber})async{
    List reqValues = await getOrderId(amountInCent: amountcents);
   var res1 =  await Dio().post(
      PayMobData.paymentKeyRequestCardApiUrl,
      data: {
      "auth_token":reqValues[0],
      "amount_cents":amountcents,
      "expiration": 3600,
      "order_id":reqValues[1].toString(),
       "billing_data": {
    "apartment": "NA", 
    "email": userEmail, 
    "floor": "NA", 
    "first_name": firstName, 
    "street": "NA", 
    "building": "NA", 
    "phone_number": phoneNumber, 
    "shipping_method": "NA", 
    "postal_code": "NA", 
    "city": "NA", 
    "country": "NA", 
    "last_name": lasttName, 
    "state": "NA"
  },
      "currency":"EGP",
      "integration_id":PayMobData.mobWalletIntegrationID,
      
      }
    );
    String token3 = res1.data['token'];

     var res2= await Dio().post(
      PayMobData.paymentKeyRequestMobileWalletApiUrl,
      data: {
        "source": {
    "identifier": "wallet mobile number", 
    "subtype": "WALLET"
  },
  "payment_token": token3
      });
   
   await launchUrl(Uri.parse(res2.data["iframe_redirection_url"].toString()));

  }

  }
  