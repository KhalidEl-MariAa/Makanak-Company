import 'package:flutter/material.dart';
import 'package:makanak_company/features/editProfileScreen/view/widgets/edit_company_data_view.dart';

class EditProfileScreenView extends StatelessWidget {
  const EditProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(title: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),
            EditCompanyDataView()
          ],
        ),
      )
      );
  }
}