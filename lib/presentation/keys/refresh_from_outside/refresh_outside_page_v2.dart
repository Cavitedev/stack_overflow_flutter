import 'package:flutter/material.dart';

class RefreshOutsidePageV2 extends StatelessWidget {
  RefreshOutsidePageV2({Key? key}) : super(key: key);

  final _customViewKey = GlobalKey<_CustomViewState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('refresh outside')),
      body: Column(
        children: [
          CustomView(
            key: _customViewKey,
          ),
          SizedBox(height: 30),
          RaisedButton(
            child: Text('refresh outside'),
            onPressed: () {
              _customViewKey.currentState!.changeColor();
            },
          ),
        ],
      ),
    );
  }
}

class CustomView extends StatefulWidget {
  CustomView({Key? key}) : super(key: key);

  @override
  _CustomViewState createState() => _CustomViewState();

  void changeColor() {
    // input your code here
    print('change');
  }
}

class _CustomViewState extends State<CustomView> {
  Color color = Colors.red;

  void changeColor() {
    setState(() {
      if (color == Colors.red) {
        color = Colors.green;
      } else {
        color = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: color,
    );
  }
}
