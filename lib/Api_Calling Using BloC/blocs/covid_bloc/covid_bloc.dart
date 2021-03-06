import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ftips_bloc_fetch_api/Api_Calling%20Using%20BloC/models/covid_model.dart';
import 'package:ftips_bloc_fetch_api/Api_Calling%20Using%20BloC/resources/api_repository.dart';
part 'covid_event.dart';
part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  final ApiRepository _apiRepository = ApiRepository();

  @override
  CovidState get initialState => CovidInitial();

  @override
  Stream<CovidState> mapEventToState(
    CovidEvent event,
  ) async* {
    if (event is GetCovidList) {
      try {
        yield CovidLoading();
        final mList = await _apiRepository.fetchCovidList();
        yield CovidLoaded(mList);
        if (mList.error != null) {
          yield CovidError(mList.error);
        }
      } on NetworkError {
        yield CovidError("Failed to fetch data. is your device online?");
      }
    }
  }
}
