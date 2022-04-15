import 'package:flight_booking_ui/components/my_bold_text.dart';
import 'package:flight_booking_ui/components/my_regular_text.dart';
import 'package:flight_booking_ui/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../components/my_form_field.dart';
import '../components/my_network_avatar.dart';
import '../components/my_theme_button.dart';

class HomeScreen extends StatefulWidget {
  String? dataModel;

  HomeScreen({this.dataModel});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _userNameController;

  void initController() {
    _userNameController = TextEditingController();
  }

  void disposeController() {
    _userNameController.dispose();
  }

  @override
  void initState() {
    super.initState();
    initController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180.0,
              color: primaryColor,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 60.0, left: 16.0, right: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MyRegularText(
                          label: 'Search Flight',
                          color: whiteColor,
                        ),
                        Icon(Icons.menu)
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MyBoldText(
                          label: 'Hello',
                          color: whiteColor,
                          fontSize: 30.0,
                        ),
                        SizedBox(
                          height: 60.0,
                          width: 60.0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: const MyNetworkImageAvatar(
                                filePath:
                                    'https://img-cdn.inc.com/image/upload/images/panoramic/GettyImages-98328574_472319_i19gtm.jpg',
                                fit: BoxFit.contain,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: const [
                      MyRegularText(
                          label: 'Round trip', fontWeight: FontWeight.bold),
                      SizedBox(
                        width: 10.0,
                      ),
                      MyRegularText(
                        label: 'One way',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(width: 0.5, color: secondaryTextColor),
                      borderRadius: const BorderRadius.all(Radius.circular(
                              5.0) //                 <--- border radius here
                          ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: MyRegularText(
                                    label: 'FROM',
                                    align: TextAlign.start,
                                  )),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Origin"),
                                style: const TextStyle(
                                  color: primaryTextColor,
                                  fontSize: 14.0,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.flight_takeoff,
                          color: primaryColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(width: 0.5, color: secondaryTextColor),
                      borderRadius: const BorderRadius.all(Radius.circular(
                              5.0) //                 <--- border radius here
                          ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: MyRegularText(
                                    label: 'TO',
                                    align: TextAlign.start,
                                  )),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Destination"),
                                style: const TextStyle(
                                  color: primaryTextColor,
                                  fontSize: 14.0,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.flight_land_sharp,
                          color: primaryColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            border: Border.all(
                                width: 0.5, color: secondaryTextColor),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    5.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: MyRegularText(
                                    label: 'DEPARTURE',
                                    align: TextAlign.start,
                                    fontSize: 10.0,
                                  )),
                              const SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: primaryColor,
                                        size: 15.0,
                                      )),
                                  const SizedBox(width: 5.0,),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: MyRegularText(
                                          label: DateFormat('yyyy-MMM-dd')
                                              .format(DateTime.now())
                                              .toString(),fontWeight: FontWeight.bold,)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            border: Border.all(
                                width: 0.5, color: secondaryTextColor),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    5.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: MyRegularText(
                                    label: 'RETURN',
                                    align: TextAlign.start,
                                    fontSize: 10.0,
                                  )),
                              const SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: primaryColor,
                                        size: 15.0,
                                      )),
                                  const SizedBox(width: 5.0,),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: MyRegularText(
                                        label: DateFormat('yyyy-MMM-dd')
                                            .format(DateTime.now())
                                            .toString(),fontWeight: FontWeight.bold,)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0,),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(
                          width: 0.5, color: secondaryTextColor),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(
                              5.0) //                 <--- border radius here
                      ),
                    ),
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: MyRegularText(
                              label: 'TRAVELLERS',
                              align: TextAlign.start,
                              fontSize: 10.0,
                            )),
                        const SizedBox(height: 5.0,),
                        Row(
                          children: const [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.group,
                                  color: primaryColor,
                                  size: 15.0,
                                )),
                            SizedBox(width: 5.0,),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: MyRegularText(
                                  label: '2 Adults',fontWeight: FontWeight.bold,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: MyThemeButton(
                      buttonText: 'SEARCH FLIGHT',
                      fontSize: 12.0,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
