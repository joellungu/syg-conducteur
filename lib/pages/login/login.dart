import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class Login extends StatelessWidget {
  //
  final formKey = GlobalKey<FormState>();
  final telephone = TextEditingController();
  final mdp = TextEditingController();
  //
  RxBool vue = true.obs;

  LoginController loginController = Get.find();
  //
  RxBool masquer = true.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal, // Status bar color
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        alignment: Alignment.center,
                        child: Text(
                          "SYG",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // decoration: const BoxDecoration(
                        //   image: DecorationImage(
                        //     image: ExactAssetImage("assets/logo_MIN SANTE.png"),
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                      ),
                      // Image.asset(
                      //   "assets/logo_MIN SANTE.png",
                      //   width: 300,
                      //   height: 300,
                      // ),
                      const SizedBox(
                        height: 70,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Connectez-vous pour recevoir des nouvelles commandes",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      TextFormField(
                        controller: telephone,
                        keyboardType: TextInputType.number,
                        validator: (e) {
                          if (e!.isEmpty) {
                            return "Veuilliez inserer votre email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: const Icon(Icons.phone_android),
                          hintText: "Téléphone",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(
                        () => TextFormField(
                          controller: mdp,
                          obscureText: masquer.value,
                          validator: (e) {
                            if (e!.isEmpty) {
                              return "Veuilliez inserer votre mot de passe";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Obx(
                              () => IconButton(
                                icon: vue.value
                                    ? Icon(Icons.lock)
                                    : Icon(Icons.lock),
                                onPressed: () {
                                  //
                                  masquer.value = !masquer.value;
                                },
                              ),
                            ),
                            hintText: "Mot de passe",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            //Get.off(Accueil());

                            Get.dialog(Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(),
                            ));

                            // Timer(Duration(seconds: 3), () {
                            //   Get.back();
                            //   Get.off(Accueil());
                            // });
                            Map e = {
                              "telephone": telephone.text,
                              "pwd": mdp.text,
                            };
                            loginController.login(e);
                            //loginController.deja.value = true;
                          }
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                            const Size(
                              double.maxFinite,
                              45,
                            ),
                          ),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          child: Text(
                            "S'authentifier",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          //
                          //Get.to(MdpOublie());
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                            Size(
                              double.maxFinite,
                              45,
                            ),
                          ),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                          //backgroundColor:
                          //  MaterialStateProperty.all(Colors.red.shade900),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          child: const Text(
                            "Mot de passe oublié",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  //)
                ),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 70,
            alignment: Alignment.center,
            // child: Image.asset(
            //   "assets/LOGO SURSA TTRANSPARENT.png",
            //   width: 70,
            //   height: 70,
            // ),
          ),
          // RichText(
          //   textAlign: TextAlign.center,
          //   text: TextSpan(
          //     text: "Power by\n",
          //     style: const TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     children: [
          //       TextSpan(
          //         text: "SkyTechnologie",
          //         style: TextStyle(
          //           color: Colors.grey.shade700,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
