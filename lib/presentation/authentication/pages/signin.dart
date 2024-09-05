import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/appBar/custom_app_bar.dart';
import 'package:spotify/common/widgets/button/intro_button.dart';
import 'package:spotify/common/widgets/textfield/customTextFormField.dart';
import 'package:spotify/core/configs/assets/app_vector.dart';
import 'package:spotify/presentation/authentication/pages/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: Colors.transparent,
        title: SvgPicture.asset(
          AppVector.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const _signInText(),
                  const SizedBox(
                    height: 120,
                  ),
                  Customtextformfield(
                    hintText: 'Enter Username or Email',
                    controller: emailController,
                    isVisible: true,
                  ),
                  Customtextformfield(
                    hintText: 'Password',
                    controller: passwordController,
                    isVisible: false,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: IntroButton(onPressed: () {}, title: 'Sign In'),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not A Member?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                        },
                        child: const Text(
                          'Register Now',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _signInText extends StatelessWidget {
  const _signInText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}
