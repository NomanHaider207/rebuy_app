import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/custom_navbar.dart';
import '../../../components/headersection.dart';
import '../../../constants/assets.dart';
import '../components/cardviewforlistingitems.dart';

class MyListing extends StatefulWidget {
  const MyListing({super.key});

  @override
  State<MyListing> createState() => _MyListingState();
}

class _MyListingState extends State<MyListing> {
  final List<Map<String, String?>> items = [
    {
      "image": Assets.product,
      "title": "Item 1",
      "price": "\$20",
      "viewCount": "100k",
      "postedDate": "2020-14-20",
      "messageCount": "5", // Optional field
      "isVisible": "true", // Visible state for eye icon
    },
    {
      "image": Assets.product,
      "title": "Item 2",
      "price": "\$30",
      "viewCount": "1k",
      "postedDate": "2021-14-20",
      "messageCount": "2", // Optional field
      "isVisible": "false", // Visible state for eye icon
    },
    {
      "image": Assets.product,
      "title": "Item 3",
      "price": "\$25",
      "viewCount": "8.7k",
      "postedDate": "2022-14-20",
      "messageCount": "3", // Optional field
      "isVisible": "true", // Visible state for eye icon
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.w, 70.h, 18.w, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                HeaderSectionForTitles(title: "My Listings"),
                SizedBox(height: 20.h),

                // List of Items
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: CardViewForListingItems(
                        image: Image.asset(
                          item["image"] ?? '',
                          width: 110.w,
                          height: 110.h,
                          fit: BoxFit.cover,
                        ),
                        title: item["title"]!,
                        price: item["price"]!,
                        viewCount: item["viewCount"]!,
                        postedDate: item["postedDate"]!,
                        messageCount: item["messageCount"],
                        isVisible: item["isVisible"] == "true", // Convert string to bool
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
