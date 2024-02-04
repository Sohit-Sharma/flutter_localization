import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<HomeController>(
          builder: (controller) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppLocalizations.of(context)!.helloSohit),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey.shade300),
                    child: DropdownButton<String>(
                      value: controller.selectedLanguage,
                      onChanged: (newValue) {},
                      items: [
                        DropdownMenuItem(
                          value: 'english',
                          child: const Text('English'),
                          onTap: (){
                            controller.changeLocale("english", const Locale("en"));
                          },
                        ),
                        DropdownMenuItem(
                          value: "spanish",
                          child: const Text('Spanish'),
                          onTap: (){
                            controller.changeLocale("spanish", const Locale("es"));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        ));
  }
}
