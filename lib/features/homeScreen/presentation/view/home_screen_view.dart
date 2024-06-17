import 'package:flutter/material.dart';
import 'package:makanak_company/features/homeScreen/presentation/view/widgets/home_screen_app_bar.dart';
import 'package:makanak_company/features/homeScreen/presentation/view/widgets/profileView/profile_view.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 10,),),
        HomeScreenAppBar(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CompanyProfileView(),
            
            
          ],           
           ),
        )
       
      ],
    );
  }
}