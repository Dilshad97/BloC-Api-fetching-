class ResCovid {
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  String date;


  ResCovid.fromJson(Map<String, dynamic>map)
  {
      this.newConfirmed =map['Global']['NewConfirmed'];
      this.totalConfirmed =map['Global']['TotalConfirmed'];
      this.newDeaths =map['Global']['NewDeaths'];
      this.totalDeaths =map['Global']['TotalDeaths'];
      this.newRecovered =map['NewRecovered'];
      this.totalRecovered =map['Global']['TotalRecovered'];
      this.date =map['Global']['Date'];
    }
  }
