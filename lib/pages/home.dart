import 'package:cake_laya/pages/manage_shop.dart';
import 'package:cake_laya/pages/widgets/button_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        border: null,
        middle: Text("HOME"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: ButtonCommon(
                  textColor: Colors.black,
                  onTap: () {
                    Navigator.push(
                      context,
                      ManageShop.route(),
                    );
                  },
                  text: 'Manage Shop',
                  backgroundColor: const Color.fromARGB(255, 255, 206, 222),
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    "Comming Soon",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
