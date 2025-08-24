part of 'princi_cubit_cubit.dart';


sealed class PrinciCubitState extends Equatable {
  const PrinciCubitState();

  @override
  List<Object> get props => [];
}

class PrinciInitial extends PrinciCubitState {}
class PrinciLoading extends PrinciCubitState{}
class PrinciSucces extends PrinciCubitState{}
class PrinciFailure extends PrinciCubitState{}
