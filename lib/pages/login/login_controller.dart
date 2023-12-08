import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:syg_conducteur/pages/accueil.dart';
import 'package:syg_conducteur/utils/requete.dart';

class LoginController extends GetxController {
  //
  Requete requete = Requete();
  //
  var box = GetStorage();
  //
  login(Map e) async {
    //
    Response response =
        await requete.getE("conducteur/login/${e['telephone']}/${e['pwd']}");
    //
    if (response.isOk) {
      //
      box.write("user", response.body);
      //
      Get.back();
      Get.offAll(Accueil());
    } else {
      //
      Get.back();
      Get.snackbar("Erreur", "Numéro de téléphone ou mot de passe incorrect",
          backgroundColor: Colors.red);
    }
  }
}
