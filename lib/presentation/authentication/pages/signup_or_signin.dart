import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appBar/custom_app_bar.dart';
import 'package:spotify/common/widgets/button/intro_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vector.dart';
import 'package:spotify/core/configs/theme/app_colos.dart';
import 'package:spotify/presentation/authentication/pages/signup.dart';

class SignUpOrSignInPage extends StatelessWidget {
  const SignUpOrSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVector.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVector.bottomPattern),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Image(
              image: AssetImage(AppImages.authenticationBG),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  AppVector.logo,
                  height: 70,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Enjoy Listening To Music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  'Spotify is a propietary Swedish audio streaming and media services provider',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColos.grey, fontSize: 16),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 40),
                      child: IntroButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          title: 'Register'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 40),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: context.isDarkMode
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
