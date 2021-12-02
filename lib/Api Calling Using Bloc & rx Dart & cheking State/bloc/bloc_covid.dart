import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/Repo/covid_repo.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/State/state_covid.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/bloc/Base_BloC/base_bloc.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/model/covid_item.dart';
import 'package:rxdart/rxdart.dart';

class CovidBloc extends BaseBloc {
  final covidState = PublishSubject<CovidState>();
  final covRepo = CovidRepo();
  final covItem = BehaviorSubject<Covid>();

  void getData() {
    covidState.add(CovidState.loading());
    subscription.add(covRepo
        .getCovidDetail()
        .map((data) => CovidState.completed(data))
        .onErrorReturnWith((error) => CovidState.error(error))
        .startWith(CovidState.loading())
        .listen((state) {
      covidState.add(state);
      print('////// State: $state');
    }, onError: (error) {
      print('// $error');
      return;
    }));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    covidState.close();
    covItem.close();
  }
}
