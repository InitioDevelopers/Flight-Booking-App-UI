import 'package:flight_booking_ui/components/my_card.dart';
import 'package:flight_booking_ui/components/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../components/my_network_avatar.dart';
import '../utils/colors_utils.dart';

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
      backgroundColor: backgroundColor,
      body: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 40.0, 8.0, 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        MyRegularText(
                          label: 'Your trip',
                          fontSize: 12.0,
                          color: secondaryTextColor,
                        ),
                        MyRegularText(
                          label: 'AMZ - DLH',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                        MyRegularText(
                          label: '12 Feb 2022',
                          fontSize: 12.0,
                          color: secondaryTextColor,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      child: Icon(
                        Icons.menu,
                        color: primaryColor,
                      ))
                ],
              ),
              Expanded(
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

                      return Column(
                        children: <Widget>[
                          MyCard(
                            radius: 5.0,
                            margin: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      MyNetworkImageAvatar(
                                        filePath: fightLogo,
                                        fit: BoxFit.contain,
                                      ),
                                      MyRegularText(
                                        label: cost,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              MyRegularText(
                                                label: deptTime,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              const MyRegularText(
                                                label: 'AMZ, Mon',
                                                fontSize: 10.0,
                                                color: secondaryTextColor,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 32.0,
                                          ),
                                          Column(
                                            children: const [
                                              Icon(
                                                Icons.flight_takeoff,
                                                color: primaryColor,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 32.0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              MyRegularText(
                                                label: arrTime,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              const MyRegularText(
                                                label: 'DLH, Tue',
                                                fontSize: 10.0,
                                                color: secondaryTextColor,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: MyRegularText(
                                                label: flightNo,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          const MyRegularText(
                                            label: 'Flight No.',
                                            fontSize: 12.0,
                                            color: secondaryTextColor,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      MyRegularText(
                                          label: 'Duration: ' + duration,
                                          fontSize: 10.0,
                                          color: secondaryTextColor,
                                          align: TextAlign.start),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      MyRegularText(
                                        label: flightType,
                                        color: secondaryTextColor,
                                        fontSize: 10.0,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          )),
    );
  }

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/data/flight_data.txt');
    setState(() => data = json.decode(jsonText));
    return 'success';
  }
}
