import 'package:flutter/material.dart';
import 'package:newtask/home_section.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E-BOOK',
          style: TextStyle(
            color: Colors.red,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/books.jpeg',
            fit: BoxFit.cover,
            width: _deviceWidth,
            height: _deviceHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                width: _deviceWidth,
                height: _deviceHeight * 0.1,
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  'Welcome to E-Book!',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeSection()),
                  );
                },
                child: const Text('Get Started'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
