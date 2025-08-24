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
      body: Padding(padding: const EdgeInsets.all(16), 
      child : Column(
        children: [
          //Profesores (Bloc)
          Expanded(
            child: BlocBuilder<PrinciBlocBloc, PrinciBlocState>(
              builder: (context, state) {
                if (state is BlocLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is BlocSucces) {
                  return ListView.builder(
                    itemCount: state.profesores.length,
                    itemBuilder: (_, index) =>
                        ListTile(title: Text(state.profesores[index])),
                  );
                }else if (state is BlocFailure) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Error al cargar profesores"),
                          SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {
                              context.read<PrinciBlocBloc>().add(Cargarprofe());
                            },
                            child: const Text("Reintentar"),
                          ),
                        ],
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),

          const Divider(),
          //Materias (Cubit)
          Expanded(
            child: BlocBuilder<PrinciCubitCubit, PrinciCubitState>(
              builder: (context, state) {
                if (state is PrinciLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is PrinciSucces) {
                  return ListView.builder(
                    itemCount: state.materias.length,
                    itemBuilder: (_, index) =>
                        ListTile(title: Text(state.materias[index])),
                  );
                } else if (state is PrinciFailure) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Error al cargar materias"),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {
                              context.read<PrinciCubitCubit>().petimocky();
                            },
                            child: const Text("Reintentar"),
                    )],
                    ),
                  );
                }
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                     cubit.petimocky();
                    },
                    child: const Text("Cargar Materias"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    )
    );
  }
}