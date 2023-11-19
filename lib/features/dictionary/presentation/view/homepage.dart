import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:history_tracking/history_tracking.dart';
import 'package:history_tracking/models/keywords.dart';

import '../../../../core/constant/constant_color.dart';
import '../../../../core/constant/constant_font_style.dart';
import '../../../profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HistoryTracking historyTracking = HistoryTracking();
  late List<Keywords> listKeywords = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHistory();
  }

  void loadHistory() async {
    listKeywords = await historyTracking.FreuentlyKeywords();
  }

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
            icon: SvgPicture.asset('lib/core/assets/icon/notification.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ລາວ - ລາວ",
                  style: ConstantText.biggest,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () => Navigator.pushNamed(context, "/search"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.search_outlined,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("ຄົ້ນຫາ “ ວຽກບ້ານ,ບົດເຝິກຫັດ... ”")
                            ],
                          ),
                          SvgPicture.asset(
                            'lib/core/assets/icon/menu.svg',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
                itemCount: listKeywords.length,
                itemBuilder: (context, index) {
                  Row(
                    children: [Text(listKeywords[index].keywords)],
                  );
                }),
          )
        ],
      ),
    );
  }
}
