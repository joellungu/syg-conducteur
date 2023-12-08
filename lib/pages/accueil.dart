import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'commande/commande.dart';
import 'profil/profile.dart';

class Accueil extends StatelessWidget {
  //
  //var box = GetStorage();
  //
  String token = "";
  //
  Accueil() {
    //
    nouveauMessage();
  }
  //
  nouveauMessage() async {
    //token = box.read("token");
    //
  }

  //
  Rx<Widget> vue = Rx(Commande());
  //
  List angles = [
    {"titre": "Commandes", "icon": "GisCar"},
    {"titre": "Profil", "icon": "IonPersonSharp"},
    //{"titre": "Location logistique", "icon": "MdiTruckDelivery"},
    //{"titre": "Profil", "icon": "PhCarProfileFill"},
    //{"titre": "Aide", "icon": "MdiCarPickup"},
    //{"titre": "Profil", "icon": "PhMotorcycleFill"},
  ];
  //
  RxInt c = 0.obs;
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      //appBar: AppBar(),
      body: Obx(() => vue.value),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          //fixedColor: Colors.black,
          onTap: (i) {
            c.value = i;
            print(c.value);
            if (c.value == 0) {
              vue.value = Commande();
            } else {
              vue.value = Profile();
            }
          },
          currentIndex: c.value,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          items: List.generate(
            angles.length,
            (index) {
              Map e = angles[index];
              return BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/${e["icon"]}.svg",
                  //color: Colors.deepPurple,
                  semanticsLabel: e["titre"],
                  height: c.value == 0 && index == 0
                      ? 30
                      : c.value == 1 && index == 1
                          ? 30
                          : 20,
                  width: c.value == 0 && index == 0
                      ? 30
                      : c.value == 1 && index == 1
                          ? 30
                          : 20,
                ),
                label: "${e["titre"]}",
              );
            },
          ),
        ),
      ),
    );
  }
}
