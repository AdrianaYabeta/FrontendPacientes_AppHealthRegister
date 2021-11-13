import 'package:appregister/API/autenticacion_nuevacuenta.dart';
import 'package:appregister/utils/responsive.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'input_text.dart';

class RegistrarCuenta extends StatefulWidget {
  const RegistrarCuenta({Key? key}) : super(key: key);

  @override
  _RegistrarCuentaState createState() => _RegistrarCuentaState();
}

class _RegistrarCuentaState extends State<RegistrarCuenta> {
  // ignore: prefer_final_fields, unused_field
  GlobalKey<FormState> _formkey = GlobalKey();
  final AutenticacionNuevo _autenticacionNuevo = AutenticacionNuevo();
  String usuario2 = '', contrasena2 = '', email2 = '';

  _submit() {
    final isOk = _formkey.currentState!.validate();
    print("form isOk $isOk");
    if (isOk) {
      _autenticacionNuevo.register(
        usuario: usuario2,
        email: email2,
        contrasena: contrasena2,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 130,
      left: 20,
      right: 20,
      child: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            // ignore: prefer_const_constructors
            InputText(
              keyboardType: TextInputType.name,
              label: "𝗡𝗼𝗺𝗯𝗿𝗲 𝗱𝗲 𝗨𝘀𝘂𝗮𝗿𝗶𝗼",
              onChanged: (text) {
                usuario2 = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Usuario no valido";
                }
                return null;
              },
            ),
            InputText(
              keyboardType: TextInputType.emailAddress,
              label: "𝗘𝗺𝗮𝗶𝗹",
              onChanged: (text) {
                email2 = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Email no valido";
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
                contrasena2 = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Contraseña no valida";
                }
                return null;
              },
            ),
            SizedBox(
              height: responsive.dp(5),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // ignore: unnecessary_this
                  if (_formkey.currentState!.validate()) {
                    print("guardar");
                  }
                  // ignore: unnecessary_this
                  _submit();
                  Navigator.pushNamed(context, 'iniciarsesion');
                },
                child: Text(
                  "𝗖𝗿𝗲𝗮𝗿 𝗖𝘂𝗲𝗻𝘁𝗮",
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
                Text("¿𝗬𝗮 𝘁𝗶𝗲𝗻𝗲 𝘂𝗻𝗮 𝗰𝘂𝗲𝗻𝘁𝗮?"),
                TextButton(
                  child: Text(
                    " 𝗜𝗻𝗴𝗿𝗲𝘀𝗮𝗿",
                    style: TextStyle(
                      fontSize: responsive.dp(1.6),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.indigo[900],
                      padding: EdgeInsets.symmetric(vertical: 15)),
                  onPressed: () {
                    Navigator.pop(context);
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
