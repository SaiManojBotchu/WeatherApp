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
                      fontSize: 38.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Chance of Rain: 3%',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
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
                              fontSize: 140.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: -125,
                    right: 90,
                    child: Container(
                      width: 220.0,
                      height: 220.0,
                      child: Image.asset(
                        'assets/images/17.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -120,
                    left: 40,
                    child: Column(
                      children: [
                        Text(
                          'Wind',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '6 km/h',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -120,
                    right: 40,
                    child: Column(
                      children: [
                        Text(
                          'Humidity',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '78%',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120.0),
              // Container(
              //   margin: const EdgeInsets.symmetric(horizontal: 20.0),
              //   width: double.infinity,
              //   height: 120.0,
              //   color: Colors.white,
              // ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      height: 70.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/Home.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          Image.asset(
                            'assets/images/Search.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                          Text(
                            'Mon 29, Sept',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Image.asset(
                            'assets/images/Discovery.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          Image.asset(
                            'assets/images/Search.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ],
                      )),
                  SizedBox(height: 15.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/Home.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                        Image.asset(
                          'assets/images/Search.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                        Image.asset(
                          'assets/images/Discovery.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                        Image.asset(
                          'assets/images/Search.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                      ],
                    ),
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
