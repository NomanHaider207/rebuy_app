import 'package:flutter/material.dart';
import 'package:rebuy/constants/routes/routes.dart';
import '../../../../../components/divider.dart';
import '../../../../../components/footer_section.dart';
import '../../../../../components/form_fields.dart';
import '../../../../../components/header_section.dart';
import '../../../../../components/options_description.dart';
import '../../../../../components/socialbuttons.dart';
import '../../../../../components/submit_button.dart';
import '../../../../../components/title.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(35.0, 64.0, 35.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(route: Routes.login),
            SizedBox(height: 55.0),
            PageTitle(text: 'Sign Up'),
            SizedBox(height: 30.0),
            TextOptionsDesc(text: "Sign up"),
            SizedBox(height: 20.0),
            SocialLoginButtons(),
            SizedBox(height: 50.0),
            DividerWithText(),
            SizedBox(height: 40.0),
            FormFields(
              fields: [
                {'hintText': 'Name'},
                {'hintText': 'Email', 'keyboardType': TextInputType.emailAddress},
                {'hintText': 'Password', 'obscureText': true},
              ],
              controllers: [_nameController, _emailController, _passwordController],
            ),
            SizedBox(height: 30.0),
            SubmitButton(buttonText: 'Login'),
            SizedBox(height: 20.0),
            FooterSection(descriptionText: "Already have an acccount?", buttonText: " Login", route: Routes.login,),
          ],
        ),
      ),
    );
  }
}

