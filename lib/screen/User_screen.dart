import 'package:e_commerce_app/widget/user/UserWidget.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text('user '),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return UserWidget();
        },
      ),
    );
  }
}
