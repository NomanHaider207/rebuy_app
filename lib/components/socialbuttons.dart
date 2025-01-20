import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebuy/constants/assets.dart';

class SocialLoginButtons extends StatelessWidget {
  final VoidCallback onGooglePressed;
  final VoidCallback onXPressed;
  final VoidCallback onApplePressed;

  const SocialLoginButtons({
    Key? key,
    required this.onGooglePressed,
    required this.onXPressed,
    required this.onApplePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SocialLoginButton(
          asset: Assets.googleLogo,
          onPressed: onGooglePressed,
        ),
        SocialLoginButton(
          asset: Assets.xLogo,
          onPressed: onXPressed,
        ),
        SocialLoginButton(
          asset: Assets.appleLogo,
          onPressed: onApplePressed,
        ),
      ],
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  final String asset;
  final VoidCallback onPressed;

  const SocialLoginButton({
    required this.asset,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Call the provided onPressed callback
      child: Container(
        width: 105.0,
        height: 57.0,
        decoration: BoxDecoration(
          color: Color(0xFFDEDEDE),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: SvgPicture.asset(
            asset,
            width: 28.0,
            height: 28.0,
          ),
        ),
      ),
    );
  }
}
