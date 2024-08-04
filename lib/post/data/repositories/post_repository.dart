import 'package:dio/dio.dart';
import 'package:flutter_third/post/data/models/comment_model.dart';
import 'package:flutter_third/post/data/models/post_model.dart';

class PostRepository {
  final Dio dio = Dio();

  Future<List<PostModel>> getPosts() async {
    Response response = await dio.get(
      "https://jsonplaceholder.typicode.com/posts",
    );

    List<PostModel> posts = [];

    for (var json in response.data) {
      posts.add(PostModel.fromJson(json));
    }

    return posts;
  }

  Future<List<CommentModel>> loadComments({
    required int postId,
  }) async {
    Response response = await dio.get(
      'https://jsonplaceholder.typicode.com/posts/$postId/comments',
    );

    return List<CommentModel>.from(
      response.data.map((x) => CommentModel.fromJson(x)),
    );
  }
}
