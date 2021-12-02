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

  final covidbloc =CovidBloc();

  BaseBloc getBaseBloc(){
    return covidbloc;
  }

  @override
  void initState() {
    // TODO: implement initState
    covidbloc.getdata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(),
 body: Card(
   child: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Center(




       child: StreamBuilder<CovidState>(
         stream: covidbloc.covidState,
         builder:  (context, snapshot) {
           return Column(
             children: [
                         _data(snapshot?.data?.data,)
             ],
           ) ;
         }
       )
     ),
   ),
 ),
    ));
  }

  Widget _data(Covid covid,)=> Column(
    children: [
      Text("New Confirmed  Cases:" +' '+"${covid?.newConfirmed??''}"),
      Text("Total Confirmed Cases :" +' '+"${covid.totalConfirmed}"),
      Text("Total Death  :" +' '+"${covid.totalDeaths}"),
      Text("Total Recovered:" +' '+"${covid.totalRecovered}"),
    ],
  );

}

