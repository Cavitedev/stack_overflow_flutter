import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  int columns = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(onPressed: () {
                setState(() {
                  columns = columns % 5 + 1;
                });

              }, icon: Icon(Icons.view_module))
            ],
          ),
          GridPlaceholders(columns: columns,)
        ],
      ),
    );
  }
}

class ListPlaceholders extends StatelessWidget {
  const ListPlaceholders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Placeholder(fallbackHeight: 100);
    }, childCount: 100));
  }
}

class GridPlaceholders extends StatelessWidget {
  final int columns;

  const GridPlaceholders({
    Key? key,
    required this.columns,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Placeholder(fallbackHeight: 100);
      }, childCount: 100),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: columns),
    );
  }
}
