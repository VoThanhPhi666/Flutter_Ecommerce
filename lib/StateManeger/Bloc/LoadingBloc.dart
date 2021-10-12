import 'package:ecommerce_application/StateManeger/Event/LoadingEvent.dart';
import 'package:ecommerce_application/StateManeger/State/LoadingState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc(LoadingState initialState) : super(initialState);
  @override
  Stream<LoadingState> mapEventToState(event) async* {
    if (event is NotifyEnableLoadingEvent)
      yield IsLoadingState();
    else {
      if (event is NotifyEndLoadingEvent) yield EndLoadingState();
    }
  }
}
