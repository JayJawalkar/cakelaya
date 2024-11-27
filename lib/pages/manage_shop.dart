import 'package:cake_laya/pages/packaging_delivery.dart';
import 'package:cake_laya/pages/promotions.dart';
import 'package:cake_laya/pages/widgets/button_common.dart';
import 'package:cake_laya/pages/widgets/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageShop extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const ManageShop(),
      );
  const ManageShop({super.key});

  @override
  State<ManageShop> createState() => _ManageShopState();
}

class _ManageShopState extends State<ManageShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        backgroundColor: Colors.transparent,
        border: null,
        middle: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "MANAGE SHOP",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shop Name:",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Hub Quality Bakers",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "FSSAI License Number:",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "873687DHDHJH122",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Commission %:",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "10",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Add Shop Display Photo (Max  1):",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ButtonCommon(
                    textColor: Colors.white,
                    onTap: () {},
                    text: 'Add Image',
                    backgroundColor: Colors.red,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonCommon(
                    textColor: Colors.red,
                    onTap: () {
                      Navigator.push(
                        context,
                        PackagingDelivery.route(),
                      );
                    },
                    text: 'Packaging & Delivery',
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonCommon(
                    textColor: Colors.red,
                    onTap: () {
                      Navigator.push(
                        context,
                        Promotions.route(),
                      );
                    },
                    text: 'Promotions',
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: const Column(
                children: [
                  Note(note1: 'Shop will not be visible to customers if you have no products added!',note2: 'We recommend adding products at menu price to avoid items being delisted in the future!',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


