import 'package:cake_laya/pages/widgets/button_common.dart';
import 'package:cake_laya/pages/widgets/forms_reuse.dart';
import 'package:cake_laya/pages/widgets/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackagingDelivery extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const PackagingDelivery(),
      );
  const PackagingDelivery({super.key});

  @override
  State<PackagingDelivery> createState() => _PackagingDeliveryState();
}

class _PackagingDeliveryState extends State<PackagingDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        backgroundColor: Colors.transparent,
        border: null,
        middle: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "PACKAGING & DELIVERY",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FormsReuse(
              formName: 'Delivery Time:',
              hintText1: 'Enter Value',
              hintText2: 'Minutes',
            ),
            const SizedBox(
              height: 7,
            ),
            const FormsReuse(
              formName: 'Delivery Radius:',
              hintText1: 'Enter Value',
              hintText2: 'KM',
            ),
            const SizedBox(
              height: 7,
            ),
            const FormsReuse(
              formName: 'Free Delivery Radius:',
              hintText1: 'Enter Value',
              hintText2: 'KM',
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Packaging and Delivery fees:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const FormsReuse(
              hintText1: 'OV ≥ ₹ 500',
              hintText2: '0',
              formName: 'Order Value(OV) Wise:',
            ),
            const FormsReuse(
              hintText1: 'OV < ₹ 500',
              hintText2: 'Enter Price in ₹',
              formName: 'Order Value(OV) Wise:',
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Note(
                  note1: 'Minimum Value Allowed: ₹ 0',
                  note2: 'Maximum Value Allowed: ₹ 100'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ButtonCommon(
                textColor: Colors.white,
                onTap: () {},
                text: 'Save',
                backgroundColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
