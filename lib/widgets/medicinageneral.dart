import 'package:appregister/API/autenticacion_medicina.dart';
import 'package:appregister/utils/responsive.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'input_text.dart';

class FichaMedicinaGeneralForm extends StatefulWidget {
  const FichaMedicinaGeneralForm({Key? key}) : super(key: key);

  @override
  _FichaMedicinaGeneralFormState createState() =>
      _FichaMedicinaGeneralFormState();
}

class _FichaMedicinaGeneralFormState extends State<FichaMedicinaGeneralForm> {
  // ignore: prefer_final_fields, unused_field

  GlobalKey<FormState> _formkey = GlobalKey();
  final AutenticacionMedicina _autenticacionMedicina = AutenticacionMedicina();
  String usuario1 = '', apellido1 = '', fecha = '', hora = '', doctor = '';

  _submit() {
    final isOk = _formkey.currentState!.validate();
    print("form isOk $isOk");
    if (isOk) {
      _autenticacionMedicina.register(
        nombre: usuario1,
        apellido: apellido1,
        fecha: fecha,
        hora: hora,
        doctor: doctor,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      top: 270,
      left: 20,
      right: 20,
      child: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            // ignore: prefer_const_constructors
            InputText(
              keyboardType: TextInputType.name,
              label: "𝗡𝗼𝗺𝗯𝗿𝗲",
              onChanged: (text) {
                usuario1 = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Nombre no valido";
                }
                return null;
              },
            ),
            InputText(
              keyboardType: TextInputType.name,
              label: "𝗔𝗽𝗲𝗹𝗹𝗶𝗱𝗼",
              onChanged: (text) {
                apellido1 = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Apellido no valido";
                }
                return null;
              },
            ),
            InputText(
              keyboardType: TextInputType.name,
              label: "𝗗𝗼𝗰𝘁𝗼𝗿",
              onChanged: (text) {
                doctor = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Nombre no valido";
                }
                return null;
              },
            ),
            InputText(
              keyboardType: TextInputType.name,
              label: "𝗙𝗲𝗰𝗵𝗮",
              onChanged: (text) {
                fecha = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Fecha no valida";
                }
                return null;
              },
            ),
            InputText(
              keyboardType: TextInputType.name,
              label: "𝗛𝗼𝗿𝗮",
              onChanged: (text) {
                hora = text!;
              },
              validator: (text) {
                if (text!.isEmpty) {
                  return "Hora no valida";
                }
                return null;
              },
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: responsive.dp(3),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // ignore: unnecessary_this
                  if (_formkey.currentState!.validate()) {
                    _submit();
                    //Navigator.pushNamed(context, 'elecciones');
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text(
                            '\n\n𝗦𝘂𝘀 𝗱𝗮𝘁𝗼𝘀 𝗵𝗮𝗻 𝘀𝗶𝗱𝗼 𝗿𝗲𝗴𝗶𝘀𝘁𝗿𝗮𝗱𝗼𝘀 𝗰𝗼𝗿𝗿𝗲𝗰𝘁𝗮𝗺𝗲𝗻𝘁𝗲'),
                        content: Text(
                            '\n 𝗣𝗿𝗲𝘀𝗶𝗼𝗻𝗲 𝗢𝗞 𝗽𝗮𝗿𝗮 𝘃𝗲𝗿 𝘀𝘂 𝘁𝗶𝗰𝗸𝗲𝘁'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, 'apiticket'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                  // ignore: unnecessary_this
                },
                child: Text(
                  "𝗥𝗲𝗴𝗶𝘀𝘁𝗿𝗮𝗿 𝗗𝗮𝘁𝗼𝘀",
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
              height: responsive.dp(1),
            ),
          ],
        ),
      ),
    );
  }
}
