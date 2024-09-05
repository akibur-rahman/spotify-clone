import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/intro_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vector.dart';
import 'package:spotify/core/configs/theme/app_colos.dart';
import 'package:spotify/presentation/choose_mode/pages/choode_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVector.logo)),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Text(
                    'Listen to high quality music with Spotify. We stream lossless music in .flac format that gives you the best music listening experience.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColos.grey,
                        fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: IntroButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ChooseModePage();
                          },
                        ));
                      },
                      title: 'Get Started'),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
