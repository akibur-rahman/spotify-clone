import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/appBar/custom_app_bar.dart';
import 'package:spotify/core/configs/assets/app_vector.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: SvgPicture.asset(
          AppVector.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
