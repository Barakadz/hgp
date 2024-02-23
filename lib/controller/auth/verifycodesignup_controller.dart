import 'package:hgp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//kol page lazem ykon laha controller page login 3andha controller , page signup 3andeha controller ...
abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  //tedini reset password page
  goToSuccessSignUp();
}

//lazem na7e9eneha fel page login
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToSignUp() {
    // TODO: implement goToSignUp
  }
}
