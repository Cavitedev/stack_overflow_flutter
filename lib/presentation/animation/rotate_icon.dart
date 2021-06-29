import 'package:flutter/material.dart';

class RotateIcon extends StatefulWidget {
  const RotateIcon({Key? key}) : super(key: key);

  @override
  _RotateIconState createState() => _RotateIconState();
}

class _RotateIconState extends State<RotateIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _animation =
        Tween(begin: 0.0, end: .5).animate(CurvedAnimation(
        parent: _controller, curve: Curves.easeOut));
    }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              RotationTransition(
                turns: _animation,
                child: const Icon(Icons.expand_more),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_controller.isDismissed) {
                      _controller.forward();
                    } else {
                      _controller.reverse();
                    }
                  },
                  child: const Text("Animate"))
            ],
          )),
    );
  }
}
