part of 'princi_bloc_bloc.dart';


sealed class PrinciBlocState extends Equatable {
  const PrinciBlocState();

  @override
  List<Object> get props => [];
}

class BlocInitial extends PrinciBlocState {}
class BlocLoading extends PrinciBlocState{}
class BlocSucces extends PrinciBlocState{}
class BlocFailure extends PrinciBlocState{}

