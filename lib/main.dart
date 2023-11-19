import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';
import 'package:lao_dictionary/features/dictionary/presentation/bloc/bloc/dictionary_bloc.dart';
import 'package:lao_dictionary/injection_container.dart';
import 'configs/router/router.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
    providers: [
      BlocProvider(create: (contet)=> sl<CommunityBloc>()),
      BlocProvider(create: (context) => sl<DictionaryBloc>())
    ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: customRoutes,
      ),
    );
  }
}
