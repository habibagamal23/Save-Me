import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'futureBride_state.dart';

class FutureBrideCubit extends Cubit<FutureBrideState> {
  FutureBrideCubit() : super(FutureBrideInitial());
}
