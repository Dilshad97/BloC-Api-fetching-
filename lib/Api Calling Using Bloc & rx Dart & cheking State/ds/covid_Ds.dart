import 'package:dio/dio.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/RestClient/rest_client.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/RestClient/rest_const.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/res/responce.dart';

import 'package:rxdart/rxdart.dart';

class CovidApiDs {
  Observable<ResCovid> getCovid() {
    return Observable.fromFuture(RestClient().dio().get(RestConsts.BASE_URL,
        options: Options(extra: {
          'header': true,
        }))).map((response) => ResCovid.fromJson(response.data));
  }
}
