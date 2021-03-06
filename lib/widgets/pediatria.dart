import 'package:appregister/API/autenticacion_pediatria.dart';
import 'package:appregister/utils/responsive.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'input_text.dart';

class FichaPediatriaForm extends StatefulWidget {
  const FichaPediatriaForm({Key? key}) : super(key: key);

  @override
  _FichaPediatriaFormState createState() => _FichaPediatriaFormState();
}

class _FichaPediatriaFormState extends State<FichaPediatriaForm> {
  // ignore: prefer_final_fields, unused_field
  GlobalKey<FormState> _formkey = GlobalKey();
  final AutenticacionPediatria _autenticacionPediatria =
      AutenticacionPediatria();
  String usuario1 = '', apellido1 = '', fecha = '', hora = '', doctor = '';

  _submit() {
    final isOk = _formkey.currentState!.validate();
    print("form isOk $isOk");
    if (isOk) {
      _autenticacionPediatria.register(
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
              label: "π‘πΌπΊπ―πΏπ²",
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
              label: "ππ½π²πΉπΉπΆπ±πΌ",
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
              label: "ππΌπ°ππΌπΏ",
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
              label: "ππ²π°π΅π?",
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
              label: "ππΌπΏπ?",
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
                    Navigator.pushNamed(context, 'elecciones');
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text(
                            '\n\nπ¦ππ π±π?ππΌπ π΅π?π» ππΆπ±πΌ πΏπ²π΄πΆπππΏπ?π±πΌπ π°πΌπΏπΏπ²π°ππ?πΊπ²π»ππ²'),
                        content: Text(
                            '\n π£πΏπ²ππΆπΌπ»π² π’π π½π?πΏπ? ππ²πΏ ππ ππΆπ°πΈπ²π'),
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
                  "π₯π²π΄πΆπππΏπ?πΏ ππ?ππΌπ",
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
