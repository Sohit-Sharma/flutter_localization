import 'package:flutter/material.dart';
import 'package:flutter_localization/home_controller.dart';
import 'package:flutter_localization/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Localization',
          localizationsDelegates:  AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: controller.appLocale,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomePage(),
        );
      }
    );
  }
}
