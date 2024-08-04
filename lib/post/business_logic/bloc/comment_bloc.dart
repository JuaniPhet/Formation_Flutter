import 'package:bloc/bloc.dart';
import 'package:flutter_third/post/data/models/comment_model.dart';
import 'package:flutter_third/post/data/repositories/post_repository.dart';
import 'package:meta/meta.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final int postId;
  CommentBloc(this.postId) : super(CommentInitial()) {
    on<LoadCommentEvent>((event, emit) async {
      try {
        emit(LoadCommentPending());

        var repository = PostRepository();
        var futureComments = await repository.loadComments(postId: postId);

        emit(LoadCommentSuccess(commentModelList: futureComments));
      } catch (e) {
        emit(LoadCommentFailure(message: e.toString()));
      }
    });
  }
}
