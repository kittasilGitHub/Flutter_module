import 'package:first_app/bloc/page/page_event.dart';
import 'package:first_app/bloc/page/page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  // constructor to initialize state
  PageBloc() : super(PageState(selectedPage: 0)) {

    // event handler for PageChangeEvent
    on<PageChangeEvent>((event, emit) {
      // update the state with the new selected page index
      emit(PageState(selectedPage: event.pageIndex));
    });
  }
}
