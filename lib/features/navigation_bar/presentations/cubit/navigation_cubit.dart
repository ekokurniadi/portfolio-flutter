import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(0);

  FutureOr<void> setPageIndex(int index)async{
    emit(index);
  }
}
