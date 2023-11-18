import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';
import 'package:lao_dictionary/features/community/presentation/view/community_page.dart';
import 'package:lao_dictionary/features/home/bottom_navigation_bar.dart';
import 'package:lao_dictionary/features/home/homepage.dart';
import 'package:lao_dictionary/injection_container.dart';
import 'injection_container.dart' as di;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
            BlocProvider(create: (context)=> sl<CommunityBloc>())
        ],
        child:const NaviPage()
        ),
    );
  }
}


