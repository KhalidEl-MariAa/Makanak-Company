import 'package:flutter/material.dart';
import 'package:makanak_company/features/addSaleScreen/presentation/view/widgets/add_sale_body.dart';
import 'package:makanak_company/features/addSaleScreen/presentation/view/widgets/add_sale_screen_app_bar.dart';

class AddSaleScreen extends StatelessWidget {
  const AddSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
        AddSaleScreenAppBar(),
        AddScreenBody(),
        ],
      ),
    );
  }
}