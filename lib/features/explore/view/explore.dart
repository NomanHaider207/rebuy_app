import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/components/custom_navbar.dart';
import 'package:rebuy/features/explore/components/explore_product_card_view.dart';
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
    "Appliances",
  ];

  final List<Map<String, String>> products = [
    {
      "userName": "Noman Haider",
      "bio": "Loves Guitar Music",
      "avatarUrl": "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg",
      "productName": "Cordoba Mini Guitar",
      "description": "Make: Cordoba | Year: 2020",
      "productImage": Assets.product,
      "price": "100,000 PKR"
    },
    {
      "userName": "Ali Khan",
      "bio": "Tech Enthusiast",
      "avatarUrl": "https://images.pexels.com/photos/48831/pexels-photo-48831.jpeg",
      "productName": "Sony Mirrorless Camera",
      "description": "Model: Alpha 7R III | Year: 2021",
      "productImage": Assets.product,
      "price": "250,000 PKR"
    },
    {
      "userName": "Sara Ahmed",
      "bio": "Music Lover",
      "avatarUrl": "https://images.pexels.com/photos/1835826/pexels-photo-1835826.jpeg",
      "productName": "Fender Stratocaster Guitar",
      "description": "Make: Fender | Year: 2018",
      "productImage": Assets.product,
      "price": "320,000 PKR"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(18.w, 70.h, 18.w, 0.0),
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
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: ExploreProductCardView(
                        userName: product["userName"] ?? "",
                        bio: product["bio"] ?? "",
                        avatarUrl: product["avatarUrl"] ?? "",
                        productName: product["productName"] ?? "",
                        description: product["description"] ?? "",
                        productImage: product["productImage"] ?? "",
                        price: product["price"] ?? "",
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomNavBarWithSvg(),
      ),
    );
  }
}


