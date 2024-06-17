import 'package:flutter/material.dart';
import 'package:makanak_company/features/itemofSaleHistoryDetailsScreen/presentation/view/widgets/item_of_sale_history_datails_appbar.dart';
import 'package:makanak_company/features/itemofSaleHistoryDetailsScreen/presentation/view/widgets/sale_name_and_description_pirce_details.dart';

class ItemOfSaleHistoryDetailsBodyView extends StatelessWidget {
  const ItemOfSaleHistoryDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        ItemOfSaleHistoryDetailsAppBr(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: SaleNameAndDescriptionAndPriceDetailsView()
        )
      ],
    );
  }
}