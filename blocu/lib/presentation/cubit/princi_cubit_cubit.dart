import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'princi_cubit_state.dart';

class PrinciCubitCubit extends Cubit<PrinciCubitState> {
  PrinciCubitCubit() : super(PrinciInitial());

  Future<void> petimocky() async{
    emit(PrinciLoading());
    try{
      final url = Uri.parse('https://mocki.io/v1/fa975218-53c3-4a60-81a2-5c3cd23f3f89');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<String> materias = (data["materias"] as List)
            .map((m) => m["nombre"].toString()).toList();
        emit(PrinciSucces(materias));}
        else {
        emit(PrinciFailure("Error: ${response.statusCode}"));
      }
      } catch (e) {
      emit(PrinciFailure("Error al cargar materias "));
    }
    }
    }
