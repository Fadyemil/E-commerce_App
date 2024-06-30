import 'package:e_commerce_app/const/global_colors.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ListTile(
      autofocus: true,
      leading: FancyShimmerImage(
        height: size.width * 0.15,
        width: size.width * 0.15,
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
      title: Text('user Name'),
      subtitle: const Text("Email@email.com"),
      trailing: Text(
        "User role",
        style: TextStyle(
          color: lightIconsColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
