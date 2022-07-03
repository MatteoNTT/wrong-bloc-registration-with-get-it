import 'dart:async';

import 'package:get_it/get_it.dart';

import '../../presentation/bloc/secondary_cubit.dart';

final injector = GetIt.instance;

FutureOr<void> init() async {
  await _initMainAppDependencies();
}

FutureOr<void> _initMainAppDependencies() async {
  // Wrong bloc registration!
  injector.registerLazySingleton<SecondaryPageCubit>(
    () => SecondaryPageCubit(),
  );

  // Correct bloc registration
  // injector.registerFactory<SecondaryPageCubit>(
  //   () => SecondaryPageCubit(),
  // );
}
