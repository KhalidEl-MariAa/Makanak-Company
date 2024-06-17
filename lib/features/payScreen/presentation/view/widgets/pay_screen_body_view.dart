import 'package:flutter/material.dart';
import 'package:makanak_company/features/payScreen/presentation/view/widgets/actionButtons/pay_by_card_action.dart';
import 'package:makanak_company/features/payScreen/presentation/view/widgets/actionButtons/pay_by_mob.dart';

class PayScreenBodyView extends StatelessWidget {
  const PayScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PayByCardAction(),
          SizedBox(height: 20,),
          PayByMobAction()
        ],
      ),
    );
  }
}