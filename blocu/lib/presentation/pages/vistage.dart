import 'package:blocu/presentation/bloc/princi_bloc_bloc.dart';
import 'package:blocu/presentation/cubit/princi_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class InicialVista extends StatelessWidget {
  const InicialVista({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PrinciCubitCubit>();

    return Scaffold( backgroundColor: Colors.grey,
      appBar: AppBar(centerTitle: true,title: Text("Bloc/Cubit prueba", style: TextStyle(color: Colors.white),), backgroundColor: Colors.black),
      
    );

  }
}
