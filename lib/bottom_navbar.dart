import 'package:flutter/material.dart';
import 'package:serbada/ui/best_seller_view.dart';
import 'package:serbada/ui/category.dart';
import 'package:serbada/ui/category_view.dart';
// import 'package:serbada/ui/category_view.dart';
import 'package:serbada/ui/profile_view.dart';

import 'ui/home_view.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NavbarState();
  }
}

class NavbarState extends State<Navbar> {
  int _selectedPage = 0;
  final _pageOptions = [
    const HomeView(),
    const CategoryView(),
    const BestSellerView(),
    Profile(),

    // const PopularMoviesPage(),
    // GroupListViewDemo(),
    // Content(),
    // Content(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serbada Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        // appBar: AppBar(
        //     // title: Text('Riwayat Transaksi'),
        //     ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          // bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.rate_review), label: 'Best Seller'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
          ],
          // ),
        ),
      ),
    );
  }
}
