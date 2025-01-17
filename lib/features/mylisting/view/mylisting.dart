import 'package:flutter/material.dart';

import '../../../components/custom_navbar.dart';
import '../../../constants/assets.dart';
import '../../mylikeditems/components/headersection.dart';
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
      "price": "\$ 20",
      "viewCount": "100k",
      "postedDate": '2020-14-20',
      "messageCount": "5",  // Optional field
      "isVisible": "true",   // Visible state for eye icon
    },
    {
      "image": Assets.product,
      "title": "Item 2",
      "price": "\$ 30",
      "viewCount": "1K",
      "postedDate": '2021-14-20',
      "messageCount": "2",  // Optional field
      "isVisible": "false",  // Visible state for eye icon
    },
    {
      "image": Assets.product,
      "title": "Item 3",
      "price": "\$ 25",
      "viewCount": "8.7K",
      "postedDate": '2022-14-20',
      "messageCount": "3",  // Optional field
      "isVisible": "true",   // Visible state for eye icon
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(35, 60, 35, 0.0),
        child: Column(
          children: [
            HeaderSectionForTitles(title: "My Listings"),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: CardViewForListingItems(
                      image: Image.asset(
                        item["image"] ?? '',
                        width: 110.0,
                        height: 110.0,
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBarWithSvg(),
    );
  }
}
