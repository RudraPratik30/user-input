import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String state, district, stage;
  WelcomePage(
      {Key? key, required this.state, required this.district, required this.stage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('State: $state'),
                Text('District: $district'),
                Text('Stage: $stage'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
