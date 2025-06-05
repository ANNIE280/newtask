import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themecontroller.dart';
import 'profile.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    _bookListView(),
    Text(
      'My Favorite Books',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    MyProfileSection(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            themeProvider.themeMode == ThemeMode.light
                ? Colors.deepPurple
                : Colors.black,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'E-BOOK APP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _pages[_selectedIndex],
      ),
      backgroundColor:
          themeProvider.themeMode == ThemeMode.light
              ? Colors.white
              : Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget _bookListView() {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search books....',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset('assets/images/books.jpeg'),
              title: Text(
                "Alice's Adventures in Wonderland",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Text(
                '-Lewis Caroll',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/books.jpeg'),
              title: Text(
                "Alice's Adventures in Wonderland",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Text(
                '-Lewis Caroll',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: Text(
                'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
