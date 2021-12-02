
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/Mapper/mapper.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/ds/covid_Ds.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/model/covid_item.dart';
import 'package:rxdart/rxdart.dart';

class CovidRepo{
  final covidDs=CovidApiDs();
  final covidMapper = CovidMapper();
  Observable<Covid> getCovidDetail(){
    return covidDs.getCovid().map((gridResponce) => covidMapper.map(gridResponce));
  }
}