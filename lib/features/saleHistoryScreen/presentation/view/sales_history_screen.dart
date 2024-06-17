import 'package:flutter/material.dart';
import 'package:makanak_company/features/saleHistoryScreen/presentation/view/widgets/sales_history_body_view.dart';
import 'package:makanak_company/features/saleHistoryScreen/presentation/view/widgets/sales_history_screen_app_bar.dart';

class SalesHistoryScreen extends StatelessWidget {
  const SalesHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      
      slivers: [
      SalesHistoryScreenAppBar(),
      SalesHistoryBodyView()
      ],
    );
  }
}