import 'package:hgp/core/constant/color.dart';
import 'package:hgp/view/widget/custom_snackbar.dart';
import 'package:http/http.dart';
import 'package:hgp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//kol page lazem ykon laha controller page login 3andha controller , page signup 3andeha controller ...
abstract class LoginController extends GetxController {
  signUp();
  //tedini signup page
  goToSignUp();
}

//lazem na7e9eneha fel page login
class SignUpControllerImp extends LoginController {
  //key linfewetoha lel form
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController nom;
  late TextEditingController prenom;
  late TextEditingController adresse;
  late TextEditingController email;
  late TextEditingController nom_dentreprise;
  late TextEditingController telephone;
  late TextEditingController password;

  @override
  signUp() {
    //form
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      void login() async {
        try {
          var response = await post(
              Uri.parse("https://groupe-hasnaoui.com/fr/hgp/add_user.php"),
              body: {
                'nom': nom.text.toString(),
                'prenom': prenom.text.toString(),
                'adresse': adresse.text.toString(),
                'nom_entreprise': nom_dentreprise.text.toString(),
                'mail': email.text.toString(),
                'telephone': telephone.text.toString(),
                'password': password.text.toString(),
              });

          if (response.statusCode == 200) {
            var data = jsonDecode(response.body.toString());
            if (data['success'] == true) {
              Get.offNamed(AppRoute.verfiyCodeSignUp);
            } else {
              customSnackbar('Error', data['message']);
            }
          } else {
            print("Failed");
          }
        } catch (e) {
          print(e.toString());
        }
      }

      login();

      //
      //delete les données men memory , prcq lema derna signup wenkmlo wenro7o page login , kin3awdo nwelo signup yego3do les données 3la biha derte delete lel memory bach les données yror7o
      // 7dadena beli SignUpControllerImp howa lindirolah delete lel memory
      Get.delete<SignUpControllerImp>();
      //awe testa3mle lazyput
    } else {
      print("not valid");
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    nom = TextEditingController();
    prenom = TextEditingController();
    adresse = TextEditingController();
    email = TextEditingController();
    nom_dentreprise = TextEditingController();
    telephone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nom.dispose();
    prenom.dispose();
    adresse.dispose();
    email.dispose();
    nom_dentreprise.dispose();
    telephone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignUp() {
    // TODO: implement goToSignUp
    throw UnimplementedError();
  }
}
