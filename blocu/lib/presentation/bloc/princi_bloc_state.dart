part of 'princi_bloc_bloc.dart';


sealed class PrinciBlocState extends Equatable {
  const PrinciBlocState();

  @override
  List<Object> get props => [];
}

class BlocInitial extends PrinciBlocState {}
class BlocLoading extends PrinciBlocState{}
class BlocSucces extends PrinciBlocState{
  final List<String> profesores;
  BlocSucces(this.profesores);
  @override
  List<Object> get props => [profesores];
}
class BlocFailure extends PrinciBlocState{
  final String mensaje;
  BlocFailure(this.mensaje);
  @override
  List<Object> get props => [mensaje];
}

