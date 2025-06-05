import 'package:flutter/material.dart';
import 'package:newtask/home_section.dart';
import 'themecontroller.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    final themeProvider = Provider.of<ThemeController>(context);
    bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E-BOOK',
          style: TextStyle(
            color:
                themeProvider.themeMode == ThemeMode.light
                    ? Colors.red
                    : Colors.grey,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor:
            themeProvider.themeMode == ThemeMode.light
                ? Colors.white
                : Colors.black,
        actions: [
          Switch(
            activeColor: Colors.grey,
            value: isDarkMode,
            onChanged: (value) {
              themeProvider.toggleTheme(value);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          Image.asset(
            'assets/images/books.jpeg',
            fit: BoxFit.cover,
            width: _deviceWidth,
            height: _deviceHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: EdgeInsets.all(10),
                width: _deviceWidth,
                height: _deviceHeight * 0.1,
                decoration: BoxDecoration(
                  color:
                      themeProvider.themeMode == ThemeMode.light
                          ? Colors.white
                          : Colors.black,
                ),
                child: Text(
                  'Welcome to E-Book!',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 25,
                    color:
                        themeProvider.themeMode == ThemeMode.light
                            ? Colors.red
                            : Colors.grey,
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
