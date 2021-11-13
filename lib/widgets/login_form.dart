// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:appregister/API/authentication_api.dart';
import 'package:appregister/utils/responsive.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'input_text.dart';
import 'package:flutter/material.dart';
import 'input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formkey = GlobalKey();
  // ignore: prefer_final_fields, unused_field
  String usuario = '', contrasena = '';
  final AuthenticationAPI _authenticationAPI = AuthenticationAPI();
  _submit() {
    final isOk = _formkey.currentState!.validate();
    print("form isOk $isOk");
    if (isOk) {
      _authenticationAPI.register(
        usuario: usuario,
        contrasena: contrasena,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 110,
      left: 20,
      right: 20,
      child: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            // ignore: prefer_const_constructors
            InputText(
              keyboardType: TextInputType.emailAddress,
              label: "𝗡𝗼𝗺𝗯𝗿𝗲 𝗱𝗲 𝗨𝘀𝘂𝗮𝗿𝗶𝗼",
              onChanged: (text) {
                usuario = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Usuario no valido";
                }
                return null;
              },
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            // ignore: prefer_const_constructors
            InputText(
              obscureText: true,
              label: "𝗖𝗼𝗻𝘁𝗿𝗮𝘀𝗲ñ𝗮",
              onChanged: (text) {
                contrasena = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Contraseña no valida";
                }
                return null;
              },
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: Colors.white,
                )),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: Text(
                      "¿𝗢𝗹𝘃𝗶𝗱𝗼 𝘀𝘂 𝗰𝗼𝗻𝘁𝗿𝗮𝘀𝗲ñ𝗮?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: responsive.dp(1.5),
                      ),
                    ),
                    style: TextButton.styleFrom(
                        primary: Colors.black87,
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: responsive.dp(5),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    //_submit();
                    Navigator.pushNamed(context, 'elecciones');
                  }
                  _submit();
                  //Navigator.pushNamed(context, 'elecciones');
                  //_submit();
                },
                child: Text(
                  "𝗜𝗻𝗴𝗿𝗲𝘀𝗮𝗿",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: responsive.dp(1.5),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo[900],
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),

            SizedBox(
              height: responsive.dp(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("¿𝗡𝗼 𝘁𝗶𝗲𝗻𝗲 𝘂𝗻𝗮 𝗰𝘂𝗲𝗻𝘁𝗮?"),
                TextButton(
                  child: Text(
                    " 𝗖𝗿𝗲𝗮𝗿 𝗰𝘂𝗲𝗻𝘁𝗮",
                    style: TextStyle(
                      fontSize: responsive.dp(1.6),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.indigo[900],
                      padding: EdgeInsets.symmetric(vertical: 15)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'crearcuenta');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
