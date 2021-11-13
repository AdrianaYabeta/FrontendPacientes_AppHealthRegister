import 'dart:convert';
import 'package:appregister/pages/DisCardiologia/disp.dart';
import 'package:http/http.dart' as http;

class ApiPediatria {
  final String url = 'https://tercerparcial.azurewebsites.net/api/Cardiologias';

  Future<List<DispTicket>> getData() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      List<DispTicket> cardiologia = [];
      for (var model in jsonResponse) {
        DispTicket cardio = DispTicket.fromJson(model);
        cardiologia.add(cardio);
      }

      return cardiologia;
    } else {
      throw Exception('Error al llamar al API');
    }
  }
}
