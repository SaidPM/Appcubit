part of 'princi_cubit_cubit.dart';


sealed class PrinciCubitState extends Equatable {
  const PrinciCubitState();

  @override
  List<Object> get props => [];
}

class PrinciInitial extends PrinciCubitState {}
class PrinciLoading extends PrinciCubitState{}
class PrinciSucces extends PrinciCubitState{
  final List<String> materias;

  PrinciSucces(this.materias);
  @override
  List<Object> get props => [materias];
}
class PrinciFailure extends PrinciCubitState{
  final String mensaje;
  PrinciFailure(this.mensaje);
  @override
  List<Object> get props => [mensaje];
}
