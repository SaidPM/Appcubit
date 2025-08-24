import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'princi_bloc_event.dart';
part 'princi_bloc_state.dart';

class PrinciBlocBloc extends Bloc<PrinciBlocEvent, PrinciBlocState> {
  PrinciBlocBloc() : super(BlocInitial()) {
    on<PrinciBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
