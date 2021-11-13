import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double size;
  final List<Color> colors;

  Circle({
    Key? key,
    required this.size,
    required this.colors,
  })  : assert(size > 0),
        // ignore: unnecessary_null_comparison
        assert(colors != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: unnecessary_this
      width: this.size,
      // ignore: unnecessary_this
      height: this.size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // ignore: unnecessary_this
        gradient: LinearGradient(
            colors: this.colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    );
  }
}
