import 'package:hgp/core/constant/color.dart';
import 'package:hgp/core/constant/routes.dart';
import 'package:hgp/core/localization/changelocal.dart';
import 'package:hgp/view/screen/language/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 20),
            CustomButtonLang(
                textbutton: "Ar",
                onPressed: () {
                  //  controllerLang.changeLang("ar");
                  Get.toNamed(AppRoute.onBoarding);
                }),
            SizedBox(height: 10),
            CustomButtonLang(
                textbutton: "En",
                onPressed: () {
                  //   controllerLang.changeLang("en");
                  Get.toNamed(AppRoute.onBoarding);
                }),
          ],
        ),
      ),
    );
  }
}
