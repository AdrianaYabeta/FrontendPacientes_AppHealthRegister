import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

void main() {
  runApp(ApiT());
}

class ApiT extends StatelessWidget {
  static const routeName = 'apiticket';
  const ApiT({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '𝗙𝗶𝗰𝗵𝗮 𝗢𝗯𝘁𝗲𝗻𝗶𝗱𝗮',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController fichacontroller = TextEditingController();
  final String url = 'https://tercerparcial.azurewebsites.net/api/Random';
  Future<void> getData() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      print(jsonData);
      String nTicket = jsonData['nTicket'].toString();
      fichacontroller.text = 'Numero de Ticket: ' + nTicket;
    } else {
      throw Exception('Error al llamar al API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        children: [
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              child: Text('Obtener informacion'),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo[900],
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 10),
              ),
              onPressed: () {
                getData();
              }),
          SizedBox(
            height: 100,
          ),
          TextFormField(
              controller: fichacontroller,
              readOnly: true,
              decoration: InputDecoration(
                  hintText: "Nro de ficha:", border: InputBorder.none)),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "𝗧𝗲𝗿𝗺𝗶𝗻𝗮𝗿 𝘀𝗲𝘀𝗶𝗼𝗻",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextButton(
                child: Text(
                  " 𝗦𝗮𝗹𝗶𝗿",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: TextButton.styleFrom(
                    primary: Colors.indigo[900],
                    padding: EdgeInsets.symmetric(vertical: 15)),
                onPressed: () {
                  Navigator.pop(context,'iniciarsesion');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
