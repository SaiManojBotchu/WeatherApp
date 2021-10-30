import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/models/weather.dart';

class CityTempWidget extends StatelessWidget {
  final double size1;
  final double size2;
  final double offset;
  const CityTempWidget({required this.size1, required this.size2, required this.offset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: offset),
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return MyColors.textGradient.createShader(Offset.zero & bounds.size);
          },
          child: Text(
            '${Weather.temperature}',
            style: TextStyle(
              fontSize: size1,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return MyColors.textGradient.createShader(Offset(0, -offset) & bounds.size);
          },
          child: Transform.translate(
            offset: Offset(0, -offset),
            child: Text(
              '\u00B0',
              style: TextStyle(
                fontSize: size2,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        )
      ],
    );
  }
}
