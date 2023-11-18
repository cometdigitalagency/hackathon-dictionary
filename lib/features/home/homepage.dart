import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/constant_color.dart';
import '../../core/constant/constant_font_style.dart';
import '../profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        backgroundColor: ConstantColor.colorBackground,
        title: const Profile(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            icon: SvgPicture.asset('/core/assets/icon/notification.svg'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ລາວ - ລາວ",
              style: ConstantText.biggest,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/search"),
                child: Container(
                  height: 40,
                  width: 345,
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}