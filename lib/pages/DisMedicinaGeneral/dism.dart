import 'package:flutter/material.dart';

class DispMedicina {
  final String doctor;
  final String startTime;
  final String dias;

  DispMedicina({
    required this.doctor,
    required this.startTime,
    required this.dias,
  });

  factory DispMedicina.fromJson(Map<String, dynamic> json) {
    return DispMedicina(
      doctor: json['doctor'],
      startTime: json['startTime'],
      dias: json['dias'],
    );
  }
}
