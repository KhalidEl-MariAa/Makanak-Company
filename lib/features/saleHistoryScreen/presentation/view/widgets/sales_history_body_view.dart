import 'package:flutter/material.dart';
import 'package:makanak_company/features/saleHistoryScreen/presentation/view/widgets/custom_sale_item.dart';

class SalesHistoryBodyView extends StatelessWidget {
  const SalesHistoryBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 10,),
      itemBuilder: (context, index) => const CustomSaleItem(),);
  }
}