import 'package:flutter/material.dart';
import 'package:makanak_company/features/registerAsCompnay/presentation/view/widgets/register_as_company_view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const 
      
         CustomScrollView(
          slivers: [
            SliverFillRemaining(
            hasScrollBody: false,
            child: RegisterBodyView(),
          )],
        );
  }
}