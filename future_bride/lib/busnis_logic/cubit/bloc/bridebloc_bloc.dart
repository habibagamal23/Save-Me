import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bridebloc_event.dart';
part 'bridebloc_state.dart';

class BrideblocBloc extends Bloc<BrideblocEvent, BrideblocState> {
  BrideblocBloc() : super(BrideblocInitial()) {
    on<BrideblocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
