import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/appBar/custom_app_bar.dart';
import 'package:spotify/common/widgets/button/intro_button.dart';
import 'package:spotify/common/widgets/textfield/customTextFormField.dart';
import 'package:spotify/core/configs/assets/app_vector.dart';
import 'package:spotify/presentation/authentication/pages/signin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar(
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
              const SizedBox(height: 40),
              _registerText(),
              const SizedBox(height: 120),
              Customtextformfield(
                hintText: 'Full Name',
                controller: fullNameController,
                isVisible: true,
              ),
              Customtextformfield(
                hintText: 'Enter Email',
                controller: emailController,
                isVisible: true,
              ),
              Customtextformfield(
                hintText: 'Password',
                controller: passwordController,
                isVisible: false,
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: IntroButton(onPressed: () {}, title: 'Register'),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do You Have An Account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
