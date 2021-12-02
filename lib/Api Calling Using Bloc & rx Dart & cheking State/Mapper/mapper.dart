import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/model/covid_item.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/res/responce.dart';

import 'BaseMapper/base_mapper.dart';

class CovidMapper extends BaseMapper<ResCovid, Covid>{
  @override
  Covid map(ResCovid t) {
  return Covid(
    newConfirmed: t.newConfirmed,
    totalConfirmed:  t.totalConfirmed,
    newDeaths: t.newDeaths,
    totalDeaths: t.totalDeaths,
    newRecovered: t.newRecovered,
    totalRecovered: t.totalRecovered,
    date: t.date
  );
  }

}