import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/widget/home/ProdectWidget.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            const BackButton(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Head_details(),
            ),
            List_image(size: size),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: desc(),
            )
          ],
        ),
      ),
    );
  }
}

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

class List_image extends StatelessWidget {
  const List_image({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.4,
      child: Swiper(
        itemCount: 3,
        itemBuilder: (BuildContext, index) {
          return Build_Image(size: size);
        },
        autoplay: true,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            color: Colors.white,
            activeColor: Colors.red,
          ),
        ),
      ),
    );
  }
}

class desc extends StatelessWidget {
  const desc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
