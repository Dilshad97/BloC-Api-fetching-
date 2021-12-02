class Covid {
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  String date;
  List<Country> country;

  Covid(
      {this.newConfirmed,
      this.totalConfirmed,
      this.newDeaths,
      this.totalDeaths,
      this.newRecovered,
      this.totalRecovered,
      this.date,
      this.country});
}

class Country {
  String iD;
  String country;
  String countryCode;
  String slug;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  String date;

  Country(
      {this.iD,
      this.country,
      this.countryCode,
      this.slug,
      this.newConfirmed,
      this.totalConfirmed,
      this.newDeaths,
      this.totalDeaths,
      this.newRecovered,
      this.totalRecovered,
      this.date});

  Country.fromJson(Map<String, dynamic> map) {
    iD = map['ID'];
    country = map['Country'];
    countryCode = map['CountryCode'];
    slug = map['Slug'];
    newConfirmed = map['NewConfirmed'];
    totalConfirmed = map['TotalConfirmed'];
    newDeaths = map['NewDeaths'];
    totalDeaths = map['TotalDeaths'];
    newRecovered = map['NewRecovered'];
    totalRecovered = map['TotalRecovered'];
    date = map['Date'];
  }
}
