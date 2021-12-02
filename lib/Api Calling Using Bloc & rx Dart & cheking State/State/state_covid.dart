

import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/model/covid_item.dart';

import 'BaseUiState/base_ui_state.dart';

class CovidState extends BaseUiState<Covid>{

  CovidState.loading():super.loading();
  CovidState.completed(Covid data):super.completed(data: data);
  CovidState.error(dynamic error):super.error(error);


}