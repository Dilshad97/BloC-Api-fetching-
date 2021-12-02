import 'package:flutter/material.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/State/state_covid.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/bloc/Base_BloC/base_bloc.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/bloc/bloc_covid.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/model/covid_item.dart';

class CovidCases extends StatefulWidget {
  const CovidCases({Key key}) : super(key: key);

  @override
  _CovidCasesState createState() => _CovidCasesState();
}

class _CovidCasesState extends State<CovidCases> {
  final covidbloc = CovidBloc();

  @override
  void initState() {
    // TODO: implement initState
    covidbloc.getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: StreamBuilder<CovidState>(
                stream: covidbloc.covidState,
                builder: (context, snapshot) {
                  return ListView.separated(
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [_data(snapshot?.data?.data, index)],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                            height: 4,
                            thickness: 2,
                            color: Colors.red,
                          ),
                      itemCount: snapshot?.data?.data?.country?.length ?? 0);
                })),
      ),
    ));
  }

  Widget _data(Covid covid, int index) => Column(
        children: [
          Text("Country : " + ' ' + "${covid.country[index].country}"),
          Text("Country Code : " + ' ' + "${covid.country[index].countryCode}"),
          Text("Country : " + ' ' + "${covid.country[index].country}"),
          Text("New Confirmed  Cases:" + ' ' + "${covid?.newConfirmed ?? ''}"),
          Text("Total Confirmed Cases :" + ' ' + "${covid.totalConfirmed}"),
          Text("Total Death  :" + ' ' + "${covid.totalDeaths}"),
          Text("Total Recovered:" + ' ' + "${covid.totalRecovered}"),
          Text("Slug:" + ' ' + "${covid.country[index].slug}"),
          Text("Slug:" + ' ' + "${covid.country[index].date}"),
        ],
      );
}
