import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/components/custom_navbar.dart';

import '../../../constants/assets.dart';
import '../../mylikeditems/components/cardviewforitems.dart';
import '../../../components/headersection.dart';
import '../components/cardviewfororderitems.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyLikedItemsState();
}

class _MyLikedItemsState extends State<MyOrders> {
  final List<Map<String, String>> items = [
    {
      "image": Assets.product,
      "title": "Item 1",
      "date": "2020-12-1",
      "price": "\$ 20"
    },
    {
      "image": Assets.product,
      "title": "Item 2",
      "date": "This is item 2",
      "price": "\$ 30"
    },
    {
      "image": Assets.product,
      "title": "Item 3",
      "date": "2020-12-1",
      "price": "\$ 25"
    },
    {
      "image": Assets.product,
      "title": "Item 4",
      "date": "2020-12-1",
      "price": "\$ 25"
    },
    {
      "image": Assets.product,
      "title": "Item 5",
      "date": "2020-12-1",
      "price": "\$ 25"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.w, 70.h, 18.w, 0.0),
        child: Column(
          children: [
            HeaderSectionForTitles(title: "My Orders"),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.h),
                    child: CardViewForOrderItems(
                      image: Image.asset(
                        item["image"]!,
                        width: 90.w, // Adjust size as needed
                        height: 90.h,
                        fit: BoxFit.cover,
                      ),
                      title: item["title"]!,
                      date: item["date"]!,
                      price: item["price"]!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBarWithSvg(),
    );
  }
}
