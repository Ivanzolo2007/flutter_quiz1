import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200], // Setting background color to blue
        appBar: AppBar(
          title: const Text(
            'Weather Forecast',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900], // Setting app bar color to blue
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _weatherDescription(),
                  SizedBox(height: 25),
                  _header(),
                  SizedBox(height: 45),
                  _temperature(),
                  SizedBox(height: 45),
                  _temperatureForecast(),
                  SizedBox(height: 45),
                  _footerRatings(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _weatherDescription() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Adjust the value as needed
      ),
      child: TextField(
        style: TextStyle(color: Colors.blue),
        decoration: InputDecoration(
          hintText: "Enter City Name",
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          icon: Icon(Icons.search, color: Colors.blue, size: 30,),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Pushkin 154, Taraz',
              style: TextStyle(
                color: Colors.blue[1000],
                fontSize: 42,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Friday, April 19, 2024',
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }


  Widget _temperature() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          color: Colors.yellow[200],
          size: 100,
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Text(
              '14 °F',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300
              ),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }


  Widget _temperatureForecast() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.blue[900],
              size: 50,
            ),
            Text(
              '5',
              style: TextStyle(
                fontSize: 30, // Adjust the font size as needed
                fontWeight: FontWeight.w400, // Add bold weight
                color: Colors.white, // Change text color if needed
              ),
            ),
            Text(
              'km/hr',
              style: TextStyle(
                fontSize: 20, // Adjust the font size as needed
                color: Colors.blue[900], // Change text color if needed
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.blue[900],
              size: 50,
            ),
            Text(
              '3',
              style: TextStyle(
                fontSize: 30, // Adjust the font size as needed
                fontWeight: FontWeight.w400, // Add bold weight
                color: Colors.white, // Change text color if needed
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                fontSize: 20, // Adjust the font size as needed
                color: Colors.blue[900], // Change text color if needed
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.blue[900],
              size: 50,
            ),
            Text(
              '20',
              style: TextStyle(
                fontSize: 30, // Adjust the font size as needed
                fontWeight: FontWeight.w400, // Add bold weight
                color: Colors.white, // Change text color if needed
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                fontSize: 20, // Adjust the font size as needed
                color: Colors.blue[900], // Change text color if needed
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _footerRatings() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '7 DAY WEATHER FORECAST',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 170,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white, // You can change the color as needed
                borderRadius: BorderRadius.circular(
                    15), // Adjust the value as per your requirement
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Friday',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black, // Change the color as needed
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '6 °F',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors
                                .blue[300], // Change the color as needed
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.yellow,
                          size: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 170,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white, // You can change the color as needed
                borderRadius: BorderRadius.circular(
                    15), // Adjust the value as per your requirement
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Saturday',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black, // Change the color as needed
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5 °F',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors
                                .blue[300], // Change the color as needed
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.cloud,
                          color: Colors.grey,
                          size: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}