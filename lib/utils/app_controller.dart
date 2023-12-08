import 'package:get/get.dart';
import 'package:syg_conducteur/utils/requete.dart';

class AppController extends GetxController {
  //
  Requete requete = Requete();
  //
  enregistrementToken(String token) async {
    Response response = await requete.getE("");
    if (response.isOk) {
      //
    } else {
      //
    }
  }
}
