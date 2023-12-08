import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileDetails extends StatelessWidget {
  var box = GetStorage();
  //
  Map user = {};
  //
  ProfileDetails() {
    //
    user = box.read("user") ?? {};
    //
    print("user: $user");
  }
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // ListTile(

            //   title: Text(
            //     "Profile",
            //     style: TextStyle(
            //
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   //trailing: Icon(Icons.person),
            // ),
            ListTile(
              onTap: () {
                //
              },
              title: const Text(
                "Nom",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${user['nom']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              trailing: const Icon(Icons.edit),
            ),

            ListTile(
              onTap: () {
                //
              },
              title: const Text(
                "Postnom",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${user['postnom']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              trailing: const Icon(Icons.edit),
            ),

            ListTile(
              onTap: () {
                //
              },
              title: const Text(
                "Prenom",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${user['prenom']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              trailing: const Icon(Icons.edit),
            ),

            ListTile(
              onTap: () {
                //
              },
              title: const Text(
                "telephone",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${user['telephone']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              trailing: const Icon(Icons.edit),
            ),
            ListTile(
              onTap: () {
                //
              },
              title: const Text(
                "Email",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${user['email']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              trailing: const Icon(Icons.edit),
            ),
            // ListTile(
            //   onTap: () {
            //     //
            //   },
            //   title: const Text(
            //     "Téléphone",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   subtitle: Text(
            //     "${user['']}",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.blue,
            //     ),
            //   ),
            //   trailing: const Icon(Icons.edit),
            // ),
            // ListTile(
            //   onTap: () {
            //     //
            //   },
            //   title: const Text(
            //     "Email",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   subtitle: Text(
            //     "${user['']}",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.blue,
            //     ),
            //   ),
            //   trailing: const Icon(Icons.edit),
            // ),
            // ListTile(
            //   onTap: () {
            //     //
            //   },
            //   title: const Text(
            //     "Adresse",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   subtitle: Text(
            //     "${user['']}",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.blue,
            //     ),
            //   ),
            //   trailing: const Icon(Icons.edit),
            // ),
          ],
        ),
      ),
    );
  }
}
