import 'package:blocu/presentation/pages/vistage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/bloc/princi_bloc_bloc.dart';
import 'presentation/cubit/princi_cubit_cubit.dart';

void main() {
  runApp(Pio());
}

class Pio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PrinciBlocBloc()),
        BlocProvider(create: (context) => PrinciCubitCubit()),
      ],
      child: MaterialApp(
        title: 'Cubit y bloc',
        debugShowCheckedModeBanner: false,
        home: const InicialVista(),
      ),
    );
  }
}
