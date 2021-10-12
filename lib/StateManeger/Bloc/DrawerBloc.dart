import 'package:ecommerce_application/StateManeger/Event/DrawerEvent.dart';
import 'package:ecommerce_application/StateManeger/State/DrawerState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DrawerBloc extends Bloc<DrawerEvent,DrawerState>
{
   DrawerBloc(DrawerState initialState) : super(initialState);
  @override
   Stream<DrawerState> mapEventToState(event) async*
  {
    if(event is OpenDrawerEvent)
      yield OpenDrawerState() ;
    else
      yield CloseDrawerState();
  }

}