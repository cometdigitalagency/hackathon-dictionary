import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:history_tracking/history_tracking.dart';
import 'package:history_tracking/models/keywords.dart';
import 'package:lao_dictionary/features/dictionary/presentation/bloc/bloc/dictionary_bloc.dart';
import 'package:lao_dictionary/features/dictionary/presentation/view/word_details_page.dart';
import 'package:search_package/suggest_word.dart';

import '../../../../core/constant/constant_color.dart';
import '../../../../core/constant/constant_font_style.dart';
import '../widget/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SuggestWord suggestWord = SuggestWord();
  HistoryTracking searchTracking = HistoryTracking();
  List<String> recommentWord = [];
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<DictionaryBloc>(context).add(GetWordsEvent(keywords: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.colorBackground,
      appBar: AppBar(
        title: const Text("ວັດຈະນານຸກົມ", style: ConstantText.biggest),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: ConstantColor.colorMain,
            ),
          ),
        ],
      ),
      body: BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
          if (state is Empty) {
            return const Text("ບໍ່ມີຄຳສັບສະແດງ");
          } else if (state is RecievedWords) {
            return Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.search,
                                size: 30, color: ConstantColor.colorMain),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration:const InputDecoration(
                                  hintText: 'Search...',
                                  hintStyle:
                                      TextStyle(color: ConstantColor.colorMain),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                  recommentWord = suggestWord.searchWord(value.toString()) ;
                                  });
                                },
                                onSubmitted: (val){
                                  searchTracking.storeKeybord(Keywords(keywords: val, createAt: DateTime.now(), count: 1));
                                },
                              ),
                            ),
                            SvgPicture.asset(
                              'lib/core/assets/icon/menu.svg',
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  child: ListView.builder(
                    itemCount: recommentWord.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              recommentWord[index],
                              style: const TextStyle(
                                  color: ConstantColor.colorMain),
                            ),
                            onTap: () {
                              // Navigate to ItemDetailsPage and pass the item information
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WordDetailsPage(
                                          word: state.word[index],
                                        )),
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
                ),
              ],
            );
          }

          return const Center(child: Text("Something went wrong"));
        },
      ),
    );
  }
}
