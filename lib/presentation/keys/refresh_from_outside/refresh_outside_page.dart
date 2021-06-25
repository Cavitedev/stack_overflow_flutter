//  final _customViewKey = GlobalKey<CustomViewState>();

import 'package:flutter/material.dart';

class RefreshOutsidePage extends StatefulWidget {
  const RefreshOutsidePage({Key? key}) : super(key: key);

  @override
  _RefreshOutsidePageState createState() => _RefreshOutsidePageState();
}

class _RefreshOutsidePageState extends State<RefreshOutsidePage> {
  late CustomView customView;

  @override
  void initState() {
    super.initState();
    customView = CustomView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('refresh outside')),
      body: Column(
        children: [
          customView,
          SizedBox(height: 30),
          RaisedButton(
            child: Text('refresh outside'),
            onPressed: () {
              customView.changeColor();
            },
          ),
        ],
      ),
    );
  }
}

class CustomView extends StatefulWidget {
  CustomView({Key? key}) : super(key: key);

  final state = _CustomViewState();

  @override
  _CustomViewState createState() => state;

  void changeColor() {
    state.changeColor();
  }
}

class _CustomViewState extends State<CustomView> {
  Color color = Colors.red;

  void changeColor() {
    setState(() {
      color = Colors.green;
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
