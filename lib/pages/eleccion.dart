import 'package:appregister/utils/responsive.dart';
import 'package:appregister/widgets/circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Eleccion extends StatefulWidget {
  static const routeName = 'elecciones';
  const Eleccion({Key? key}) : super(key: key);

  @override
  _EleccionState createState() => _EleccionState();
}

class _EleccionState extends State<Eleccion> {
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
                left: (size.width * 2.2) * 0.1,
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "𝗘𝘀𝗽𝗲𝗰𝗶𝗮𝗹𝗶𝗱𝗮𝗱𝗲𝘀",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: (size.width * 0.54),
                left: (size.width * 1.1) * 0.09,
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/387/387577.png',
                        width: responsive.wp(35),
                        height: responsive.wp(35),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 370,
                left: 62,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'cardiologiaopcion');
                        },
                        child: Text("Cardiologia"),
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
                top: (size.width * 0.54),
                right: (size.width * 1) * 0.09,
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        'https://cdn-cidfa.nitrocdn.com/MJxosxYaqvkFSDYPHiyHzJnzLtsSfqpT/assets/static/optimized/wp-content/uploads/2021/06/7064c722c697a4e4c60f46c793127155.icono-Pediatri%CC%81a.png',
                        width: responsive.wp(35),
                        height: responsive.wp(35),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 370,
                right: 63,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'pediatriaopcion');
                        },
                        child: Text("Pediatria"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[900],
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: (size.width * 1.12),
                left: (size.width * 0.9) * 0.09,
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        'https://png.pngtree.com/png-clipart/20201208/original/pngtree-cartoon-hand-drawn-gynecology-explaining-plant-illustration-png-image_5512059.jpg',
                        width: responsive.wp(40),
                        height: responsive.wp(40),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 130,
                left: 65,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'ginecologiaopcion');
                        },
                        child: Text("Ginecologia"),
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
                top: (size.width * 1.14),
                right: (size.width * 1) * 0.09,
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        'https://w7.pngwing.com/pngs/754/304/png-transparent-medicine-health-care-physician-general-medical-examination-health-blue-text-service.png',
                        width: responsive.wp(35),
                        height: responsive.wp(35),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 130,
                right: 35,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'medicinageneralopcion');
                        },
                        child: Text("Medicina General"),
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
