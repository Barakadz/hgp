import 'package:hgp/core/localization/changelocal.dart';
import 'package:hgp/core/localization/translation.dart';
import 'package:hgp/core/services/services.dart';
import 'package:hgp/routes.dart';
import 'package:hgp/test.dart';
import 'package:hgp/view/screen/language.dart';
import 'package:hgp/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hgp/core/constant/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HASNAOUI GYPSUM PANEL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              displayLarge:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              displayMedium:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              bodyLarge: TextStyle(color: AppColor.greyy, fontSize: 13)),
          primarySwatch: Colors.blue),
      //home: OnBoarding(),
      //nkhalihe yebda onording mel routes
      //routes: routes,
      getPages: routes,
    );
  }
}
