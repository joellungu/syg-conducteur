import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:syg_conducteur/pages/accueil.dart';

import 'login/login.dart';

class Splash extends StatelessWidget {
  var box = GetStorage();
  //
  Splash() {
    Timer(const Duration(seconds: 2), () async {
      //
      Map u = box.read("user") ?? {};
      //
      if (u['id'] == null) {
        //
        Get.offAll(Login()); //Login
      } else {
        //
        Get.offAll(Accueil()); //Accueil
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: Center(
        child: Text("SYG"),
      ),
    );
  }
}
