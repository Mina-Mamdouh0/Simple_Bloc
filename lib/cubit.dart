
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testbloc/states.dart';

class NumberCubit extends Cubit<NumberStates>{
  NumberCubit() : super(InitialState());

  static NumberCubit get(context)=>BlocProvider.of(context);

  int num=1;

  void plus(){
    num++;
    emit(PlusState());
  }

  void miuns(){
    num--;
    emit(MunisState());
  }

}