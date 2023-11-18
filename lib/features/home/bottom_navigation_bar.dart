import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lao_dictionary/features/community/presentation/view/community_page.dart';

import 'homepage.dart';

class NaviPage extends StatefulWidget {
  const NaviPage({Key? key}) : super(key: key);

  @override
  State<NaviPage> createState() => _NaviPageState();
}

class _NaviPageState extends State<NaviPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const  CommunityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              '/core/assets/icon/home.svg',
            ),
            label: "ໜ້າຫຼັກ",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              '/core/assets/icon/comunity.svg',
            ),
            label: "ຊຸມຊົນ",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              '/core/assets/icon/favorite.svg',
            ),
            label: "ຄໍາທີ່ມັກ",
          ),
        ],
      ),
    );
  }
}