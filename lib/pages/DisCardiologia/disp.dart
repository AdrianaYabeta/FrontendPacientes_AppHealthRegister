import 'package:flutter/material.dart';

class DispTicket {
  final String doctor;
  final String startTime;
  final String dias;

  DispTicket({
    required this.doctor,
    required this.startTime,
    required this.dias,
  });

  factory DispTicket.fromJson(Map<String, dynamic> json) {
    return DispTicket(
      doctor: json['doctor'],
      startTime: json['startTime'],
      dias: json['dias'],
    );
  }
}
