import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rebuy/constants/routes.dart';
import 'package:rebuy/features/auth/presentation/signup/contoller/user/user_mode.dart';
import '../../../../../components/divider.dart';
import '../../../../../components/footer_section.dart';
import '../../../../../components/form_fields.dart';
import '../../../../../components/header_section.dart';
import '../../../../../components/options_description.dart';
import '../../../../../components/socialbuttons.dart';
import '../../../../../components/submit_button.dart';
import '../../../../../components/title.dart';
import '../../../services/authservices.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
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
              SocialLoginButtons(onGooglePressed: _onGooglePressed,onXPressed: (){}, onApplePressed: (){},),
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
              SubmitButton(buttonText: 'Login', onPressed: _signUp),
              SizedBox(height: 20.0),
              FooterSection(descriptionText: "Already have an acccount?", buttonText: " Login", route: Routes.login,),
            ],
          ),
        ),
      ),
    );
  }

  _signUp() async {
    try {
      // Step 1: Create a new user with Firebase Authentication
      final credentials = await authService.createUserWithEmailAndPassword(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );

      if (credentials == null || credentials.uid == null) {
        throw Exception("User creation failed in Firebase Authentication");
      }

      final uid = credentials.uid;
      final userDocumentRef =
      FirebaseFirestore.instance.collection('users').doc(uid);
      final appUser = AppUser(
        uid: uid,
        email: _emailController.text.trim(),
        name: _nameController.text.trim(),
      );
      await userDocumentRef.set(appUser.toFirestore());
      Navigator.pushReplacementNamed(context, Routes.home);
    } catch (e) {
      print("[Sign-Up Error]: $e");
      try {
        final currentUser = FirebaseAuth.instance.currentUser;
        await currentUser?.delete();
      } catch (authError) {
        print("[Firebase Auth Cleanup Error]: $authError");
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Signup failed. Please try again.")),
      );
    }
  }


  void _onGooglePressed() async {
   final user = await authService.signInWithGoogle();
   if(user != null){
     Navigator.pushReplacementNamed(context, Routes.home);
   }
   else{
     print("[Sign- Up] : Error while creating user with google");
   }
  }
}

