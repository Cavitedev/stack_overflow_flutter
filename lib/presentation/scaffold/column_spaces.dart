//https://stackoverflow.com/questions/68230022/how-to-remove-space-between-widgets-in-column-or-row-in-flutter?noredirect=1#comment120589076_68230022
import 'package:flutter/material.dart';

class ColumnSpaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ColoredBox(
          color: Colors.red,
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                color: Colors.white,
              ),
              Container(
                height: 200,
                color: Colors.white,
              ),
              Container(
                height: 300,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
