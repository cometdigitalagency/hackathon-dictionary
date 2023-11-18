import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';

import '../../../../injection_container.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Community")),
      body: BlocProvider(
        create: (context) => sl<CommunityBloc>(),
        child: BlocBuilder<CommunityBloc, CommunityState>(
          builder: (context, state) {
            return Center(
                child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CommunityBloc>(context).add(PostTopic());
                    },
                    child: const Text("test")),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CommunityBloc>(context).add(PostCommentEvent());
                    },
                    child: const Text("test")),
              ],
            ));
          },
        ),
      ),
    );
  }
}
