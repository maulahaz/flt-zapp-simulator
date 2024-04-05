import 'package:flutter/material.dart';
import 'package:flutter_app/configs/x_configs.dart';

class AlarmSuppressPage extends StatelessWidget {
  AlarmSuppressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
              padding: EdgeInsets.all(12),
              width: 450,
              color: kWhite,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Alarm Suppress',
                        style: TextStyle(fontSize: 20, color: kBlue),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kBlue),
                              child: Text('Confirm')),
                              SizedBox(width: 10),
                              Text(
                                'DRY_OFF',
                                style: TextStyle(color: kBlue),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'DRY_OFF',
                                style: TextStyle(color: kBlue),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kGreen,
                                  shape: CircleBorder(),
                                  fixedSize: Size(30, 30)),
                              child: Icon(Icons.check)),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
