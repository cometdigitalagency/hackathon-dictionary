import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lao_dictionary/features/dictionary/presentation/view/word_details_page.dart';

import '../../core/constant/constant_color.dart';
import '../dictionary/domain/Entities/word.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<bool> isFavoriteList = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Item ${index + 1}",
                      style: const TextStyle(color: ConstantColor.colorMain),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          // Toggle the state of isFavorite for the current item
                          isFavoriteList[index] = !isFavoriteList[index];
                        });
                      },
                      icon: isFavoriteList[index]
                          ? SvgPicture.asset("assets/icon/ຫົວໃຈ1.svg")
                          : SvgPicture.asset("assets/icon/ຫົວໃຈ2.svg"),
                    ),
                  ],
                ),
                onTap: () {
                  // Navigate to ItemDetailsPage and pass the item information
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WordDetailsPage(word: Word(meaning: '', word: ''),),
                    ),
                  );
                },
              ),
              Container(
                height: 0.25,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 201, 201, 200),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}