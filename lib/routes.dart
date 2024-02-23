import 'package:hgp/core/constant/routes.dart';
import 'package:hgp/core/middelware/mymiddelware.dart';
import 'package:hgp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:hgp/view/screen/auth/login.dart';
import 'package:hgp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:hgp/view/screen/auth/signup.dart';
import 'package:hgp/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:hgp/view/screen/auth/success_signup.dart';
import 'package:hgp/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:hgp/view/screen/auth/verifycodesignup.dart';
import 'package:hgp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  //main page start
  GetPage(
      name: "/", page: () => const OnBoarding(), middlewares: [MyMiddleWare()]),
  //auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword, page: () => SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => SuccessSignUp()),
  //onBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerifyCodeSignUp()),
];
