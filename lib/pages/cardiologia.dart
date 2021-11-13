import 'package:appregister/utils/responsive.dart';
import 'package:appregister/widgets/cardiologia.dart';
import 'package:appregister/widgets/circle.dart';
import 'package:appregister/widgets/registrar_cuenta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FichaCardiologia extends StatefulWidget {
  static const routeName = 'fichacardiologia';
  const FichaCardiologia({Key? key}) : super(key: key);

  @override
  _FichaCardiologiaState createState() => _FichaCardiologiaState();
}

class _FichaCardiologiaState extends State<FichaCardiologia> {
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
                top: (size.width * 0.3),
                left: (size.width * 2.7) * 0.1,
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "𝗥𝗲𝗴𝗶𝘀𝘁𝗿𝗮𝗿 𝗱𝗮𝘁𝗼𝘀",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: (size.width * 0.47),
                left: (size.width * 4.2) * 0.1,
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/f/f4/User_Avatar_2.png',
                        width: responsive.wp(15),
                        height: responsive.wp(15),
                      ),
                    ),
                  ],
                ),
              ),
              FichaCardiologiaForm(),
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
                      Navigator.pushNamed(context, 'iniciarsesion');
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
