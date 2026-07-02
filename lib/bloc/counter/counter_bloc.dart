import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // constructor and initial state 
  CounterBloc() :super(CounterState(counter: 0)) {

    // event handler for IncreaseCounterEvent
    on<IncreaseCounterEvent>((event, emit) {

      int newCounterValue = state.counter + 1;

      emit(CounterState(counter: newCounterValue));
    });
    // event handler for DecreaseCounterEvent
    on<DecreaseCounterEvent>((event, emit) {

      int newCounterValue = state.counter - 1;

      if (newCounterValue < 0) {
        newCounterValue = 0; // Ensure the counter does not go below 0
      }
      emit(CounterState(counter: newCounterValue));
    });

    // other event handlers can be added here for different events
  }

}

      // print('-----------------------------');
      // print('IncreaseCounterEvent received');
      // print('Counter bloc processing IncreaseCounterEvent');
      // print('Current counter value: ${state.counter}');


      // print('New counter value: $newCounterValue');
      // print('Counter bloc completed');
      // print('-----------------------------');
      // // emit is used to update the state and increment the counter
      // print('Counter bloc emitting new state');
