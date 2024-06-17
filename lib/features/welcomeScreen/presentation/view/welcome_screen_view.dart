

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:makanak_company/core/reusable.dart';
import 'package:makanak_company/features/auth_Screen/presentation/view/auth_screen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  

  
  @override
  Widget build(BuildContext context) {
    
    List<PageViewModel> pages= [
    PageViewModel(
      body: "Read the coming instructions to know the purpose of our App.",
      title: 'We are very happy to be one of us',
      image: const Image(image: AssetImage('assets/customwel.jpg')),
      decoration:  PageDecoration(
        bodyPadding:  const EdgeInsets.only(top: 17),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,fontStyle: FontStyle.italic) ,
        bodyTextStyle: TextStyle(fontSize: 15.sp)), 
    ),
     PageViewModel(
      body: 'You can find products and the Companies that offer what you need with best sales and prices.',
      title: "Want to find what you want and knowing the recent companies sales?",
      image:  const Image(image: AssetImage('assets/clientwel.jpg',)),
      decoration:  PageDecoration(
        bodyPadding: const EdgeInsets.only(top: 25),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,fontStyle: FontStyle.italic) ,
        bodyTextStyle:  TextStyle(fontSize: 15.sp))
    ),
    PageViewModel(
      body: 'You can find customers that will be interested in your products and the way to communicate with them.',
      title: "Want to find customers to advertise your company products and its sales?",
      image: const Image(image: AssetImage('assets/companywel.jpg')),
      decoration:  PageDecoration(
        bodyPadding: const EdgeInsets.only(top: 25),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,fontStyle: FontStyle.italic) ,
        bodyTextStyle:  TextStyle(fontSize: 15.sp))
    )
  ];

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: IntroductionScreen(
            
            curve: Curves.bounceIn,
            dotsDecorator: DotsDecorator(
              size: Size(10.sp, 10.sp),
              activeColor: Reusable.reuseColor),
            globalBackgroundColor: Colors.white,
          pages: pages,
          onDone: (){
            
          },
          done: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthScreen(),));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Reusable.reuseColor,
              textStyle: const TextStyle(),
              fixedSize: const Size(100, 100),
              
            ),
            child: const Padding(
              padding:  EdgeInsets.only(left:12.0),
              child:  Text('Lets go!',style: TextStyle(color: Colors.white),),
            )
            ,),
          showNextButton: false,
          
          bodyPadding: const EdgeInsets.symmetric(horizontal: 0),
          
        
          ),
        ),
      ),
    );
  }
}