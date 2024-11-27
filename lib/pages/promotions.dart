import 'package:cake_laya/pages/widgets/button_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const Promotions(),
      );
  const Promotions({super.key});

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: CupertinoNavigationBar(
          backgroundColor: Colors.transparent,
          border: null,
          middle: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "PROMOTIONS",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add Promotional Banners (Max  4):",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ButtonCommon(
              textColor: Colors.white,
              onTap: () {},
              text: 'Add Images',
              backgroundColor: Colors.red,
            ),
            const SizedBox(
              height: 200,
            ),
            const Center(
              child: Text(
                "You Have Added No Banners!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
