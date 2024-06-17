import 'package:flutter/material.dart';
import 'package:makanak_company/features/contactScreen/presentation/view/widgets/contact_us_view.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
      EmailContactView()
      ],
    );
  }
}