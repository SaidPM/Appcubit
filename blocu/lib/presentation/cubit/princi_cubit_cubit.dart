import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'princi_cubit_state.dart';

class PrinciCubitCubit extends Cubit<PrinciCubitState> {
  PrinciCubitCubit() : super(PrinciInitial());
}
