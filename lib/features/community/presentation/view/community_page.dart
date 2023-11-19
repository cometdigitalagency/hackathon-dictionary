import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lao_dictionary/core/constant/constant_color.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';
import 'package:lao_dictionary/features/community/presentation/view/post_topics.dart';

import '../../../../injection_container.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<CommunityBloc>(context).add(GetTopicsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Community")),
      body: BlocBuilder<CommunityBloc, CommunityState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(color: ConstantColor.colorMain,),
            );
          }else if(state is GetDailyTopic){
            return Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                itemCount: state.topics.length,
                itemBuilder: (context, index){
                return Card(child: Column(children: [
                  Text(state.topics[index].title),
                  const SizedBox(height: 20,),
                  Text(state.topics[index].details)
                  ]),);
              }) );
          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PostPage()));
        },
        child: const Text("post"),
      ),
    );
  }
}
