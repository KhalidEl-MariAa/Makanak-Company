import 'package:flutter/material.dart';
import 'package:makanak_company/features/payScreen/presentation/view/widgets/pay_screen_appbar.dart';
import 'package:makanak_company/features/payScreen/presentation/view/widgets/pay_screen_body_view.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        PayScreenAppBar(),
        PayScreenBodyView()
      ],
    );
  }
}