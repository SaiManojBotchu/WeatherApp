import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';

final gradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Colors.white.withOpacity(0.9),
    Colors.white.withOpacity(0.85),
    Colors.white.withOpacity(0.45),
    Colors.white.withOpacity(0.1),
  ],
);

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColors.backgroundColor1,
              MyColors.backgroundColor2,
              MyColors.backgroundColor3,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.0, 0.55, 0.8],
            tileMode: TileMode.repeated,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    'Los Angeles',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Chance of Rain: 3%',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 19.0,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 40.0),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return gradient.createShader(Offset.zero & bounds.size);
                        },
                        child: Text(
                          '23',
                          style: TextStyle(
                            fontSize: 175.0,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return gradient.createShader(Offset(0, -45) & bounds.size);
                        },
                        child: Transform.translate(
                          offset: const Offset(0, -40),
                          child: Text(
                            '\u00B0',
                            style: TextStyle(
                              fontSize: 120.0,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text('wind'),
                          Text('9 km/h'),
                        ],
                      ),
                      Container(
                        width: 170.0,
                        height: 170.0,
                        color: Colors.green,
                      ),
                      Column(
                        children: [
                          Text('humidity'),
                          Text('79%'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: double.infinity,
                height: 70.0,
                color: Colors.white,
              ),
              Column(
                children: [
                  Center(child: Text('Monday 29, March')),
                  SizedBox(height: 30.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    height: 70.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
