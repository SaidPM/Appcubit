import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


part 'princi_bloc_event.dart';
part 'princi_bloc_state.dart';

class PrinciBlocBloc extends Bloc<PrinciBlocEvent, PrinciBlocState> {
  Timer? tiempo;
  PrinciBlocBloc() : super(BlocInitial()){
  on<Cargarprofe>(pretiprof);
  //aqui agrego un timer que actualiza el widget
  add(Cargarprofe());
    tiempo = Timer.periodic(const Duration(seconds: 15), (_) {
      add(Cargarprofe());
    });
  }
  Future<void> pretiprof( Cargarprofe event, Emitter <PrinciBlocState> emit) async{
    emit(BlocLoading());
    try{
      final url = Uri.parse('https://mocki.io/v1/fa975218-53c3-4a60-81a2-5c3cd23f3f89');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<String> profesores = (data["profesores"] as List)
            .map((p) => p["nombre"].toString())
            .toList();

        emit(BlocSucces(profesores) );
      } else {
        emit(BlocFailure("Error: ${response.statusCode}") );
      }
    } catch (e) {
      emit(BlocFailure("Error al cargar profesores "));
    }
        
  }
 
}
