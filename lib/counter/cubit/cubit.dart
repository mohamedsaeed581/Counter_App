import 'package:bloc/bloc.dart';
import 'package:counter/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

 static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;

  void minus ()
  {
    counter -- ;
    emit(Minus());
  }

  void plus ()
  {
    counter ++ ;
    emit(Plus());
  }
}