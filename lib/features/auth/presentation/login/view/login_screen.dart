import 'package:flutter/material.dart';
import 'package:rebuy/constants/routes.dart';

import '../../../../../components/divider.dart';
import '../../../../../components/footer_section.dart';
import '../../../../../components/form_fields.dart';
import '../../../../../components/header_section.dart';
import '../../../../../components/options_description.dart';
import '../../../../../components/socialbuttons.dart';
import '../../../../../components/submit_button.dart';
import '../../../../../components/title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(35.0, 64.0, 35.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            SizedBox(height: 55.0),
            PageTitle(text: 'Login'),
            SizedBox(height: 30.0),
            TextOptionsDesc(text: "Login"),
            SizedBox(height: 20.0),
            SocialLoginButtons(),
            SizedBox(height: 50.0),
            DividerWithText(),
            SizedBox(height: 40.0),
            FormFields(
              fields: [
                {'hintText': 'Email', 'keyboardType': TextInputType.emailAddress},
                {'hintText': 'Password', 'obscureText': true},
              ],
              controllers: [_emailController, _passwordController],
            ),
            SizedBox(height: 30.0),
            SubmitButton(buttonText: 'Login'),
            SizedBox(height: 20.0),
            FooterSection(descriptionText: "Don't have an acccount?", buttonText: " SignUp", route: Routes.signUp,),
          ],
        ),
      ),
    );
  }
}

