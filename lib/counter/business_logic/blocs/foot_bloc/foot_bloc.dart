import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'foot_event.dart';
part 'foot_state.dart';

class FootBloc extends Bloc<FootEvent, FootState> {
  FootBloc() : super(const FootState(foot: 1)) {
    on<OneFoot>((event, emit) {
      emit(FootState(foot: 1));
    });

    on<TwoFoot>((event, emit) {
      emit(FootState(foot: 2));
    });
  }
}
