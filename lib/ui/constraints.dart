
import 'package:flutter/material.dart';

const double mockUpWidth = 430.0;

const double mockUpHeight = 932.0;

const TextStyle plusJakartaSansBoldStyle = TextStyle(
    fontFamily: 'PlusJakartaSans',
    fontWeight: FontWeight.bold,
    color: staticWhiteColor);

const TextStyle plusJakartaSansRegularStyle  = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: staticWhiteColor);

const TextStyle atypDisplayStyle  = TextStyle(
    fontFamily: 'AtypDisplay',
    color: staticWhiteColor);

Map<int, Color> color =
{
  50:const Color.fromRGBO(136,14,79, .1),
  100:const Color.fromRGBO(136,14,79, .2),
  200:const Color.fromRGBO(136,14,79, .3),
  300:const Color.fromRGBO(136,14,79, .4),
  400:const Color.fromRGBO(136,14,79, .5),
  500:const Color.fromRGBO(136,14,79, .6),
  600:const Color.fromRGBO(136,14,79, .7),
  700:const Color.fromRGBO(136,14,79, .8),
  800:const Color.fromRGBO(136,14,79, .9),
  900:const Color.fromRGBO(136,14,79, 1),
};

final MaterialColor primaryColor =  MaterialColor(0xFFF4B7A8, color);
final Color startButtonColor =  Color(0xFFF4B7A8);
const Color staticWhiteColor =  Colors.white;

final LinearGradient boxGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.center,
    colors: [
      Colors.white.withOpacity(0.1),
      Colors.white.withOpacity(0.2),
      Colors.white.withOpacity(0.3),
      Colors.white.withOpacity(0.3),
      Colors.white.withOpacity(0.3),
      Colors.white.withOpacity(0.4),
      Colors.white.withOpacity(0.4),
      Colors.white.withOpacity(0.4),
      Colors.white.withOpacity(0.6),
      Colors.white.withOpacity(0.8),
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ]);