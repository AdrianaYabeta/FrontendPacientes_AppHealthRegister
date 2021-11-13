import 'package:flutter/material.dart';

class DispGinecologia {
  final String doctor;
  final String startTime;
  final String dias;

  DispGinecologia({
    required this.doctor,
    required this.startTime,
    required this.dias,
  });

  factory DispGinecologia.fromJson(Map<String, dynamic> json) {
    return DispGinecologia(
      doctor: json['doctor'],
      startTime: json['startTime'],
      dias: json['dias'],
    );
  }
}