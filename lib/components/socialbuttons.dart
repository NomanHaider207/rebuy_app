import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: SocialLoginButton(
          asset: Assets.googleLogo,
          onPressed: onGooglePressed,
        ),),
        SizedBox(width: 12.w,),
        Expanded(child: SocialLoginButton(
          asset: Assets.xLogo,
          onPressed: onXPressed,
        ),
        ),
        SizedBox(width: 12.w,),
        Expanded(child: SocialLoginButton(
          asset: Assets.appleLogo,
          onPressed: onApplePressed,
        ),),
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
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
        // width: double.maxFinite,
        // height: 57.h,
        decoration: BoxDecoration(
          color: Color(0xFFDEDEDE),
          borderRadius: BorderRadius.circular(25.h),
        ),
        child: Center(
          child: SvgPicture.asset(
            asset,
            width: 20.w,
            height: 20.h,
          ),
        ),
      ),
    );
  }
}
