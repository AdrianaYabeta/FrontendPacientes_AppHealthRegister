import 'package:appregister/utils/responsive.dart';
import 'package:appregister/widgets/circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PediatriaOpcion extends StatefulWidget {
  static const routeName = 'pediatriaopcion';
  const PediatriaOpcion({Key? key}) : super(key: key);

  @override
  _PediatriaOpcionState createState() => _PediatriaOpcionState();
}

class _PediatriaOpcionState extends State<PediatriaOpcion> {
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
                top: (size.width * 0.25),
                left: (size.width * 2.85) * 0.1,
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "𝗣𝗲𝗱𝗶𝗮𝘁𝗿𝗶𝗮",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: (size.width * 0.7),
                left: (size.width * 1.1) * 0.09,
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        'https://fincalamajadera.com/wp-content/uploads/2018/05/booking-icon.png',
                        width: responsive.wp(35),
                        height: responsive.wp(35),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 420,
                right: 42,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'dispediatria');
                        },
                        child: Text("Ver Disponibilidades"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[900],
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: (size.width * 1.2),
                left: (size.width * 1.2) * 0.09,
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        'https://www.swarbox.com/images/default/icono-registro.png',
                        width: responsive.wp(35),
                        height: responsive.wp(35),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 220,
                right: 50,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'fichapediatria');
                        },
                        child: Text("Registrar Ficha"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[900],
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
