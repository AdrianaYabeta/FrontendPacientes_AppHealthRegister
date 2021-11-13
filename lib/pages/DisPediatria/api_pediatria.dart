import 'dart:convert';

import 'package:appregister/pages/DisPediatria/dispp.dart';
import 'package:http/http.dart' as http;

class ApiPediatria {
  final String url = 'https://tercerparcial.azurewebsites.net/api/Pediatrias';

  Future<List<DispPediatria>> getData() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      List<DispPediatria> pediatria = [];
      for (var model in jsonResponse) {
        DispPediatria pediatra = DispPediatria.fromJson(model);
        pediatria.add(pediatra);
      }

      return pediatria;
    } else {
      throw Exception('Error al llamar al API');
    }
  }
}
