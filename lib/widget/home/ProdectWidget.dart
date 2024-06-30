import 'package:e_commerce_app/const/global_colors.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Prodectwidget extends StatelessWidget {
  const Prodectwidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Material(
      borderRadius: BorderRadius.circular(8.0),
      color: Theme.of(context).cardColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: '\$',
                      style: const TextStyle(
                        color: Color.fromRGBO(33, 150, 243, 1),
                      ),
                      children: [
                        TextSpan(
                          text: ' 100',
                          style: TextStyle(
                            color: lightTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '45',
                          style: TextStyle(
                            color: lightTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(IconlyBold.heart)
              ],
            ),
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FancyShimmerImage(
              height: size.height * 0.2,
              width: double.infinity,
              //! Displaying a danger icon in red color with a size of 28 pixels if there's an error loading the image
              errorWidget: Icon(
                IconlyBold.danger,
                color: Colors.red,
                size: 28,
              ),
              imageUrl:
                  'https://thumbs.dreamstime.com/b/happy-cute-kid-boy-think-choose-food-160958190.jpg',
              boxFit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'title',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
        ],
      ),
    );
  }
}
