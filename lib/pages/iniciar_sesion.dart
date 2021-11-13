// ignore_for_file: avoid_print

import 'package:appregister/utils/responsive.dart';
import 'package:appregister/widgets/circle.dart';
import 'package:appregister/widgets/login_form.dart';
import 'package:flutter/material.dart';

class IniciarSesion extends StatefulWidget {
  static const routeName = 'iniciarsesion';
  const IniciarSesion({Key? key}) : super(key: key);

  @override
  _IniciarSesionState createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double pinkSize = size.width * 0.5;
    final double pinkSize2 = size.width * 0.6;

    // ignore: unused_local_variable
    final Responsive responsive = Responsive.of(context);
    // ignore: unused_local_variable
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: responsive.height,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: -pinkSize2 * 0.3,
                right: -pinkSize2 * 0.15,
                child: Circle(
                  size: pinkSize2,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Colors.indigo.shade50,
                    Colors.indigo.shade50,
                  ],
                ),
              ),
              Positioned(
                top: -pinkSize * 0.25,
                right: -pinkSize * 0.15,
                child: Circle(
                  size: pinkSize,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Colors.indigo.shade900,
                    Colors.indigo.shade900,
                  ],
                ),
              ),
              Positioned(
                bottom: -pinkSize * 0.55,
                left: -pinkSize * 0.1,
                child: Circle(
                  size: pinkSize,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Colors.indigo.shade50,
                    Colors.indigo.shade50,
                  ],
                ),
              ),
              Positioned(
                bottom: -pinkSize * 0.65,
                left: -pinkSize * 0.15,
                child: Circle(
                  size: pinkSize,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Colors.indigo.shade900,
                    Colors.indigo.shade900,
                  ],
                ),
              ),
              Positioned(
                top: (size.width * 0.5),
                left: (size.width * 0.6) * 0.09,
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "𝗜𝗻𝗶𝗰𝗶𝗮𝗿 𝗦𝗲𝘀𝗶𝗼𝗻",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              LoginForm(),
            ],
          ),
        ),
      ),
    ));
  }
}
