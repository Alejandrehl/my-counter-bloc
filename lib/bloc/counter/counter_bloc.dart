import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementCounterEvent>((_, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });

    on<DecrementCounterEvent>((_, emit) {
      emit(state.copyWith(counter: state.counter - 1));
    });
  }
}
