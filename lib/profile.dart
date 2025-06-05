import 'package:flutter/material.dart';
import 'package:newtask/themecontroller.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyProfileSection extends StatelessWidget {
  MyProfileSection({super.key});
  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeController>(context);
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: _deviceHeight * 0.3,
          width: _deviceWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/books.jpeg'),
            ),
          ),
        ),
        Container(
          height: _deviceHeight * 0.2,
          width: _deviceHeight * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color:
                themeProvider.themeMode == ThemeMode.light
                    ? Colors.white
                    : Colors.grey,
          ),
        ),
      ],
    );
  }
}
