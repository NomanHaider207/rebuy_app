import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/main.dart';
import '../../../components/headersection.dart';
import '../../../components/search_bar.dart';
import '../../../constants/assets.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<String> items = [
    "Books",
    "Games",
    "Music",
    "Camera",
    "Mobiles",
    "Appliances"
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(18.w, 67.h, 18.w, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSectionForTitles(title: "Explore"),
                SizedBox(height: 7.h),
                CustomSearchBar(),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 35.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.w),
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3C3C3C),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(
                            items[index],
                            style: GoogleFonts.firaSans(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                ProductCard(
                  userName: "Noman Haider",
                  bio: "Hello Ji",
                  avatarUrl:
                      'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
                  productName: 'Cordoba Mini Guitar with a Very Long Name',
                  description: 'Make: Cordoba | Year: 2020',
                  productImage: Assets.product,
                  price: '100,000 PKR',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String userName;
  final String bio;
  final String avatarUrl;
  final String productName;
  final String description;
  final String productImage;
  final String price;

  const ProductCard({
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
