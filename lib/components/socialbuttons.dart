import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebuy/constants/assets.dart';

class SocialLoginButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SocialLoginButton(asset: Assets.googleLogo),
        SocialLoginButton(asset: Assets.xLogo),
        SocialLoginButton(asset: Assets.appleLogo),
      ],
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  final String asset;
  const SocialLoginButton({required this.asset});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Social login logic
      },
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
