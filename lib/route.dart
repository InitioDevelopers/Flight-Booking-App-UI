import 'package:flight_booking_ui/pages/flight_screen.dart';
import 'package:flight_booking_ui/pages/home_screen.dart';
import 'package:flight_booking_ui/pages/splash_screen.dart';
import 'package:flight_booking_ui/pages/ticket_screen.dart';
import 'package:flutter/material.dart';

// Route Names
const String splashPage  = 'splash';
const String homePage    = 'home';
const String flightPage  = 'flight';
const String ticketPage  = 'ticket';


// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashPage:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case flightPage:
      return MaterialPageRoute(builder: (context) => FlightScreen());
    case homePage:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case ticketPage:
      return MaterialPageRoute(builder: (context) => TicketScreen());
    default:
      throw('This route name does not exit');
  }
}