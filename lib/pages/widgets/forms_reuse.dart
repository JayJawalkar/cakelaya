import 'package:cake_laya/pages/widgets/Field.dart';
import 'package:flutter/material.dart';

class FormsReuse extends StatelessWidget {
  final String formName;
  final String hintText1;
  final String hintText2;

  const FormsReuse({
    required this.hintText1,
    required this.hintText2,
    required this.formName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formName,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Expanded(
                child: Field(hintText: hintText1),
              ),
              const SizedBox(width: 10), // Space between TextFields
              Expanded(
                child: Field(hintText: hintText2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
