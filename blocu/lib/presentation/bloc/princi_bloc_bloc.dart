import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'princi_bloc_event.dart';
part 'princi_bloc_state.dart';

class PrinciBlocBloc extends Bloc<PrinciBlocEvent, PrinciBlocState> {
  PrinciBlocBloc() : super(PrinciBlocInitial()) {
    on<PrinciBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
