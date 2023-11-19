import 'package:flutter/material.dart';
import 'package:lao_dictionary/features/community/presentation/view/community_page.dart';
import 'package:lao_dictionary/features/dictionary/presentation/view/word_details_page.dart';

import '../../features/dictionary/domain/Entities/word.dart';
import '../../features/dictionary/presentation/view/search_page.dart';
import '../../features/favorite/dasboard_page.dart';
import '../../features/home/bottom_navigation_bar.dart';

var customRoutes = <String, WidgetBuilder>{
  '/':(context) => const NaviPage(),
  '/search':(context) => const SearchPage(),
  '/dashboard':(context) => const DashboardPage(),
  '/itemdetails': (context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
    final itemNumber = args['itemNumber'] as String;
    return WordDetailsPage(word: Word(word: '', meaning: ''),);
  },
  '/community':(context) => const CommunityPage()
};