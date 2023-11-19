import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';
import 'package:lao_dictionary/features/dictionary/presentation/bloc/bloc/dictionary_bloc.dart';
import '../../../../core/constant/constant_color.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            const Icon(Icons.search, size: 30, color: ConstantColor.colorMain),
            const SizedBox(width: 10),
             Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: ConstantColor.colorMain),
                  border: InputBorder.none,
                ),

               onChanged: (value){
                BlocProvider.of<DictionaryBloc>(context).add(GetWordsEvent(keywords: value.toString()));
               },
              ),
            ),
            SvgPicture.asset('lib/core/assets/icon/menu.svg',),
          ],
        ),
      ),
    );
  }
}