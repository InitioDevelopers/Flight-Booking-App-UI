import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class FlightScreen extends StatefulWidget {
  String? dataModel;

  FlightScreen({this.dataModel});

  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  List? data;

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
          child: ListView.builder(
              itemCount: data == null ? 0 : data!.length,
              itemBuilder: (BuildContext context, int index) {

                var id = data![index]['id'];
                var flightNo = data![index]['flightNo'];
                var fightCompany = data![index]['fightCompany'];
                var fightLogo = data![index]['fightLogo'];
                var deptTime = data![index]['deptTime'];
                var arrTime = data![index]['arrTime'];
                var duration = data![index]['duration'];
                var flightType = data![index]['flightType'];
                var cost = data![index]['cost'];

                return  Column(
                  children: <Widget>[
                     ListTile(
                      leading: const CircleAvatar(
                        child:  Icon(Icons.account_box),
                      ),
                      title: Text(flightNo),
                      subtitle: Text(fightCompany),
                    ),
                     const Divider(),
                  ],
                );
              })),
    );
  }

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/data/flight_data.txt');
    setState(() => data = json.decode(jsonText));
    return 'success';
  }
}
