import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_detail.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profil",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(01),
        children: [
          ListTile(
            onTap: () {
              //
              Get.to(ProfileDetails());
            },
            leading: Icon(Icons.person),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              //
            },
            leading: Icon(Icons.calendar_month),
            title: Text(
              "Reservations",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            //trailing: Text("2"),
          ),
          ListTile(
            onTap: () {
              //
            },
            leading: const Icon(Icons.timelapse),
            title: const Text(
              "Historique de commandes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              //
            },
            leading: const Icon(Icons.copy),
            title: const Text(
              "Condition d'utilisations",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
