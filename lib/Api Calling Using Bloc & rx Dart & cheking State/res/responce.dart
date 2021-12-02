import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/model/covid_item.dart';

class ResCovid {
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  String date;
  List<Country> country = [];

  ResCovid.fromJson(Map<String, dynamic> map) {
    this.newConfirmed = map['Global']['NewConfirmed'];
    this.totalConfirmed = map['Global']['TotalConfirmed'];
    this.newDeaths = map['Global']['NewDeaths'];
    this.totalDeaths = map['Global']['TotalDeaths'];
    this.newRecovered = map['NewRecovered'];
    this.totalRecovered = map['Global']['TotalRecovered'];
    this.date = map['Global']['Date'];
    for (var cou in map['Countries']) {
      country.add(Country.fromJson(cou));
    }
  }
}
