import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "email") {
    if (val.isEmpty) {
      return "Il faut remplir votre Mail";
    }
    //if not email
    if (!GetUtils.isEmail(val)) {
      return "Mail non valide";
    }
  }

  if (type == "password") {
    if (val.isEmpty) {
      return "Il faut remplir votre Mot pass";
    }
    if (val.length < min) {
      return "Mot passe ne peut être inférieure à $min";
    }
    if (!GetUtils.isUsername(val)) {
      return "téléphone non valide";
    }
  }

  if (type == "nom") {
    if (val.isEmpty) {
      return "Il faut remplir votre Nom";
    }
    if (val.length > max) {
      return "Le nom ne peut être supérieure à $max";
    }
    if (!GetUtils.isUsername(val)) {
      return "Nom n'est pas valide";
    }
  }
  if (type == "prenom") {
    if (val.isEmpty) {
      return "Il faut remplir votre prénom";
    }
    if (val.length > max) {
      return "Le prénom ne peut être supérieure à $max";
    }
    if (!GetUtils.isUsername(val)) {
      return "prénom n'est pas valide";
    }
  }

  if (type == "telephone") {
    if (val.isEmpty) {
      return "Il faut remplir votre telephone";
    }
    if (val.length > max) {
      return "Le telephone ne peut être supérieure à $max";
    }
    if (val.length < min) {
      return "Le telephone ne peut être inférieure à $min";
    }
    if (!GetUtils.isPhoneNumber(val)) {
      return "Le téléphone doit étre number";
    }
  }

  if (type == "adresse") {
    if (val.isEmpty) {
      return "Il faut remplir votre adresse";
    }

    if (!GetUtils.isUsername(val)) {
      return "adresse n'est pas valide";
    }
  }
}
