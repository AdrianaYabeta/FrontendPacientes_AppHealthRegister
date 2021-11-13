import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart' show required;

class AutenticacionMedicina {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future<void> register({
    required String nombre,
    required String apellido,
    required String fecha,
    required String hora,
    required String doctor,
  }) async {
    final response = await _dio
        .post('https://tercerparcial.azurewebsites.net/api/RegistrarFichas',
            options: Options(headers: {
              'ContentType': 'application/json',
            }),
            data: {
          "Nombre": nombre,
          "Apellido": apellido,
          "Fecha": fecha,
          "Hora": hora,
          "Doctor": doctor,
        });
    _logger.i(response.data);
  }
}
