import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lao_dictionary/features/community/domain/usecases/post.dart';
import 'package:lao_dictionary/features/community/presentation/bloc/community_bloc.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    late String title;
    late String details;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(children: [
            TextField(
              decoration: const InputDecoration(
                hintText: "ຫົວຂໍ້",
              ),
              onChanged: (value) {
                title = value.toString();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "ລາຍລະອຽດເພີ່ມຕື່ມກຽວກັບສິ່ງທີ່ຢາກຖາມ",
              ),
              onChanged: (value) {
                details = value.toString();
              },
            ),
           const SizedBox(height: 30,),

            ElevatedButton(onPressed: () {
              BlocProvider.of<CommunityBloc>(context).add(PostTopic(params: TopicParams(id: DateTime.now().toString(), ownId: DateTime.now().toString(), createAt: DateTime.now(), title: title, details: details)));
              Navigator.of(context).pop();
            }, child:const Text("Summit"))
          ]),
        ),
      )),
    );
  }
}
