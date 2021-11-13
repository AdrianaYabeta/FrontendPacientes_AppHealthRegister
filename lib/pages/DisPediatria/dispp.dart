import 'package:flutter/material.dart';

class DispPediatria {
  final String doctor;
  final String startTime;
  final String dias;

  DispPediatria({
    required this.doctor,
    required this.startTime,
    required this.dias
  });

  factory DispPediatria.fromJson(Map<String, dynamic> json) {
    return DispPediatria(
      doctor: json['doctor'],
      startTime: json['startTime'],
      dias: json['dias'],
    );
  }
}