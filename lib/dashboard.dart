import 'package:flutter/material.dart';
import 'package:hiking_app/content/dashboard_content.dart';
import 'package:hiking_app/content/favourite_content.dart';
import 'package:hiking_app/content/header.dart';
import 'package:hiking_app/content/order_content.dart';

import 'package:hiking_app/content/profile_content.dart';
// import 'package:hiking_app/content/selection_content.dart';
import 'package:hiking_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardContent(),
    FavouriteContent(),
    OrderContent(),
    // SelectionContent(),
    ProfileContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                _selectedIndex != 3 ? const Header() : const SizedBox(),
                Expanded(
                  child: _widgetOptions.elementAt(_selectedIndex),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // elevation: 0,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset(
                      "assets/icons/dashboard/Dashboard.svg",
                      // color: abuAbu,
                    )
                  : SvgPicture.asset(
                      "assets/icons/dashboard/Dashboard.svg",
                      color: abuAbu,
                      height: getHeight(20),
                    ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset(
                      "assets/icons/dashboard/Bookmark.svg",
                      // color: abuAbu,
                    )
                  : SvgPicture.asset(
                      "assets/icons/dashboard/Bookmark.svg",
                      color: abuAbu,
                      height: getHeight(20),
                    ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset(
                      "assets/icons/dashboard/Document.svg",
                      // color: abuAbu,
                    )
                  : SvgPicture.asset(
                      "assets/icons/dashboard/Document.svg",
                      color: abuAbu,
                      height: getHeight(20),
                    ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset(
                      "assets/icons/dashboard/Profile.svg",
                      // color: abuAbu,
                    )
                  : SvgPicture.asset(
                      "assets/icons/dashboard/Profile.svg",
                      color: abuAbu,
                      height: getHeight(20),
                    ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ungu,
          selectedFontSize: 12,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
