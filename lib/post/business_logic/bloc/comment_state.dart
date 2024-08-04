part of 'comment_bloc.dart';

@immutable
abstract class CommentState {}

final class CommentInitial extends CommentState {}

class LoadCommentPending extends CommentState {}

class LoadCommentSuccess extends CommentState {
  final List<CommentModel> commentModelList;

  LoadCommentSuccess({required this.commentModelList});
}

class LoadCommentFailure extends CommentState {
  final String message;

  LoadCommentFailure({required this.message});
}
