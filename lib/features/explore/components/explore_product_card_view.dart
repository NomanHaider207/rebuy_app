import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/assets.dart';

class ExploreProductCardView extends StatelessWidget {
  final String userName;
  final String bio;
  final String avatarUrl;
  final String productName;
  final String description;
  final String productImage;
  final String price;

  const ExploreProductCardView({
    Key? key,
    required this.userName,
    required this.bio,
    required this.avatarUrl,
    required this.productName,
    required this.description,
    required this.productImage,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10.w, 10.h, 20.w, 5.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.h,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        bio,
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: const Color(0xFF747474),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    Assets.optionIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            productImage,
            height: 298.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                          ),
                        ),
                        Text(
                          description,
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: const Color(0xFF747474),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ]),
                ),
                Flexible(
                  flex: 1,
                  child: Text(
                    price,
                    style: GoogleFonts.firaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
