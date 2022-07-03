import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wrong_bloc_usage/src/presentation/bloc/secondary_cubit.dart';

import '../../application/di/injection_container.dart' as di;

class SecondaryPage extends StatefulWidget with AutoRouteWrapper {
  const SecondaryPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SecondaryPageCubit>(create: (context) => di.injector(), child: this);
  }

  @override
  State<SecondaryPage> createState() => _SecondaryPageState();
}

class _SecondaryPageState extends State<SecondaryPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Secondary Page')),
      body: BlocListener<SecondaryPageCubit, SecondaryPageState>(
        listener: (context, state) {
          if (state is SecondaryPageStateUpdate) {
            setState(() {
              _counter++;
            });
          }
        },
        child: Column(
          children: [
            Expanded(
              child: Center(child: Text('State emitted counter: $_counter')),
            ),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  child: const Text('Update counter'),
                  onPressed: () {
                    context.read<SecondaryPageCubit>().updateCounter();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
