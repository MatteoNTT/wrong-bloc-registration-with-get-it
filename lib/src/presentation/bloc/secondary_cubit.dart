import 'package:flutter_bloc/flutter_bloc.dart';

part 'secondary_state.dart';

class SecondaryPageCubit extends Cubit<SecondaryPageState> {
  SecondaryPageCubit() : super(SecondaryPageStateInitial());

  void updateCounter() {
    emit(SecondaryPageStateUpdate());
  }

  @override
  Future<void> close() {
    // ignore: avoid_print
    print(
        """Cubit is closed and if register it as singleton something bad will happen because the close function of bloc do this internally:

@mustCallSuper
Future<void> close() async {
  Bloc.observer.onClose(this);
  await _stateController.close();
}

Means that internally the state stream was closed and you will never receive a new state...
And no, we must call super.close() since the function have @mustCallSuper decorator
    """);
    return super.close();
  }
}
