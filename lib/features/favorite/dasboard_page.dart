import 'package:flutter/material.dart';
import 'package:lao_dictionary/features/dictionary/presentation/widget/search_bar.dart';
import 'package:lao_dictionary/features/favorite/History_page.dart';
import 'package:lao_dictionary/features/favorite/favorite_page.dart';

import '../../core/constant/constant_color.dart';
import '../../core/constant/constant_font_style.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        backgroundColor: ConstantColor.colorBackground,
        centerTitle: true,
        title: const Text(
          "ຄຳທີ່ຂ້ອຍມັກ",
          style: ConstantText.biggest,
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: SearchButton(),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: <Widget>[
                      Tab(
                        text: "ຄຳທີ່ມັກ",
                      ),
                      Tab(
                        text: "ຄຳທີ່ເຄີຍຄົ້ນຫາ",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        FavoritePage(),
                        HistoryPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}