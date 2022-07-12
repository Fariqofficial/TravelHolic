import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelholic/models/model_destination.dart';
import 'package:travelholic/service/destination_service.dart';

part 'destination_cubit_state.dart';

class DestinationCubitCubit extends Cubit<DestinationCubitState> {
  DestinationCubitCubit() : super(DestinationCubitInitial());

  void fetchData() async {
    try {
      emit(DestinationLoading());

      List<ModelDestination> model = await DestinationService().fetchModel();

      emit(DestinationSuccess(model));
    } catch (e) {
      emit(DestinationFailure(e.toString()));
    }
  }
}
