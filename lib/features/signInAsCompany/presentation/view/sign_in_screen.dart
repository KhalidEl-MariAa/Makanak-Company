import 'package:flutter/material.dart';
import 'package:makanak_company/features/signInAsCompany/presentation/view/widgets/sign_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child:SignInAsCompanyBodyView() ,
          )
        ],
      );
  }
}