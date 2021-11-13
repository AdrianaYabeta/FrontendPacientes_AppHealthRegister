import 'dart:convert';
import 'package:appregister/pages/DisMedicinaGeneral/dism.dart';
import 'package:http/http.dart' as http;

class ApiMedicina {
  final String url = 'https://tercerparcial.azurewebsites.net/api/MedicinaGenerals';

  Future<List<DispMedicina>> getData() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      List<DispMedicina> medicina = [];
      for (var model in jsonResponse) {
        DispMedicina medc = DispMedicina.fromJson(model);
        medicina.add(medc);
      }

      return medicina;
    } else {
      throw Exception('Error al llamar al API');
    }
  }
}
