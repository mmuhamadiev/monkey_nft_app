import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_state_state.dart';

class StateCubit extends Cubit<StateState> {
  StateCubit() : super(StateInitial());
}
