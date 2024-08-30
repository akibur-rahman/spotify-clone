import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/intro_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vector.dart';
import 'package:spotify/core/configs/theme/app_colos.dart';
import 'package:spotify/main.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.chooseModeBG),
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.15),
        ),
        SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SvgPicture.asset(AppVector.logo),
              ),
              const Spacer(),
              const Text(
                'Choose Mode',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context
                              .read<ThemeCubit>()
                              .updateTheme(ThemeMode.dark);
                        },
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xFF30393C).withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(
                                AppVector.moon,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Dark Mode',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColos.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context
                              .read<ThemeCubit>()
                              .updateTheme(ThemeMode.light);
                        },
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xFF30393C).withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(
                                AppVector.sun,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Light Mode',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColos.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: IntroButton(
                  onPressed: () {},
                  title: 'Continue',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
