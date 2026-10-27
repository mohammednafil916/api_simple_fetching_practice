import 'package:flutter/material.dart';
import 'package:api_practice/service/post_service.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final postService = PostService();
    return Scaffold(
      body: FutureBuilder(
        future: postService.fetchPosts(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final post = snapshot.data![index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text(post.id.toString())),
                  title: Text(post.title),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
