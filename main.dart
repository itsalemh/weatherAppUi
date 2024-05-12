import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Jun 2',
                        style: TextStyle(fontSize: screenWidth * 0.05)),
                    Text('London',
                        style: TextStyle(fontSize: screenWidth * 0.05)),
                  ],
                ),
              ),
              // Weather Condition
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '21°C',
                      style: TextStyle(
                          fontSize: screenWidth * 0.08, color: Colors.yellow),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Overcast Clouds',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.grey),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.cloud, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Temperatures',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05, color: Colors.black)),
                  ],
                ),
              ),
              // Today and This Week
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Today',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05, color: Colors.black)),
                    Text('This Week',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05, color: Colors.black)),
                  ],
                ),
              ),
              // Temperatures
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Minimum',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.grey)),
                        Text('21°C',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.blue)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Maximum',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.grey)),
                        Text('22°C',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.blue)),
                      ],
                    ),
                  ],
                ),
              ),
              // Details

              // Divider
              Container(
                height: 1,
                color: Colors.grey,
              ),
              // Daily Forecast
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pressure',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.grey)),
                            Text('1020Pa',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.blue)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Humidity',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.grey)),
                            Text('41%',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.blue)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
