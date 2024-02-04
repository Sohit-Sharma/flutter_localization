import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  String selectedLanguage="english";
  var _appLocale = const Locale('en', '');

  Locale get appLocale => _appLocale;

  void changeLocale(String value,Locale newLocale) {
    selectedLanguage=value;
    _appLocale = newLocale;
    update();
  }
}
