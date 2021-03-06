import 'package:appregister/utils/responsive.dart';
import 'package:appregister/widgets/circle.dart';
import 'package:appregister/widgets/registrar_cuenta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrearCuenta extends StatefulWidget {
  static const routeName = 'crearcuenta';
  const CrearCuenta({Key? key}) : super(key: key);

  @override
  _CrearCuentaState createState() => _CrearCuentaState();
}

class _CrearCuentaState extends State<CrearCuenta> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double pinkSize = size.width * 0.4;
    final double pinkSize2 = size.width * 0.5;
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
                top: -pinkSize2 * 0.25,
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
                top: (size.width * 0.4),
                left: (size.width * 0.4) * 0.1,
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "???????????????????? ????????????????????????",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              RegistrarCuenta(),
              Positioned(
                left: 15,
                top: 20,
                child: SafeArea(
                  child: CupertinoButton(
                    color: Colors.indigo[900],
                    padding: EdgeInsets.all(10),
                    borderRadius: BorderRadius.circular(35),
                    child: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
