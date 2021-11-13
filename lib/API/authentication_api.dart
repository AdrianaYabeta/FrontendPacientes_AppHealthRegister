import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart' show required;

class AuthenticationAPI {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future<void> register({
    required String usuario,
    required String contrasena,
  }) async {
    final response = await _dio
        .post('https://tercerparcial.azurewebsites.net/api/ISPacientes',
            options: Options(headers: {
              'ContentType': 'application/json',
            }),
            data: {
          "usuario": usuario,
          "contraseña": contrasena,
        });
    _logger.i(response.data);
  }
}
