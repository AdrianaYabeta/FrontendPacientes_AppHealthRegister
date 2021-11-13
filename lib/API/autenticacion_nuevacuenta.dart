import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart' show required;

class AutenticacionNuevo {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future<void> register({
    required String usuario,
    required String email,
    required String contrasena,
  }) async {
    final response = await _dio
        .post('https://tercerparcial.azurewebsites.net/api/RegistroPacientes',
            options: Options(headers: {
              'ContentType': 'application/json',
            }),
            data: {
          "Nombre": usuario,
          "Email": email,
          "Contraseña": contrasena,
        });
    _logger.i(response.data);
  }
}
