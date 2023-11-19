
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lao_dictionary/features/dictionary/domain/Entities/word.dart';

import '../../../../core/constant/constant_color.dart';
import '../../../../core/constant/constant_font_style.dart';


class WordDetailsPage extends StatefulWidget {
  final Word word;
  const WordDetailsPage({super.key, required this.word});

  @override
  State<WordDetailsPage> createState() => _WordDetailsPageState();
}

class _WordDetailsPageState extends State<WordDetailsPage> {

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        title: const Text(
          "ລາຍລະອຽດ",
          style: ConstantText.biggest,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                // Toggle the favorite state
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: isFavorite
                  ? SvgPicture.asset("lib/core/assets/icon/unheart.svg")
                  : SvgPicture.asset(
                      "lib/core/assets/icon/heart.svg"), // Change to the appropriate SVG
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(25),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(widget.word.word, style: ConstantText.biggest, textAlign: TextAlign.start,),
                    const SizedBox(height:  10,),
                    const Text("ພະເພດຄຳ:"),
                    const SizedBox(height: 10,),
                    Text(widget.word.meaning, style: ConstantText.big)
                ],),
              ),
          ),
        ],
      )
    );
  }
}