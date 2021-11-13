import 'dart:convert';
import 'package:appregister/pages/DisGinecologia/dispg.dart';
import 'package:http/http.dart' as http;

class ApiGinecologia {
  final String url1 = 'https://tercerparcial.azurewebsites.net/api/Ginecologias';

  Future<List<DispGinecologia>> getData() async {
    final response = await http.get(Uri.parse(url1), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      List<DispGinecologia> ginecologia = [];
      for (var model in jsonResponse) {
        DispGinecologia ginec = DispGinecologia.fromJson(model);
        ginecologia.add(ginec);
      }

      return ginecologia;
    } else {
      throw Exception('Error al llamar al API');
    }
  }
}