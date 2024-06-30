import 'package:e_commerce_app/const/global_colors.dart';
import 'package:flutter/material.dart';

class Head_details extends StatelessWidget {
  const Head_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Category',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 18),
        const Text(
          'title text',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 3,
              child: Text(
                "Lorem Ipsum",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: RichText(
                text: TextSpan(
                  text: '\$',
                  style: const TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(33, 150, 243, 1)),
                  children: [
                    TextSpan(
                        text: "168.00",
                        style: TextStyle(
                            color: lightTextColor,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 18),
      ],
    );
  }
}