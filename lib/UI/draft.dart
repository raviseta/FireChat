import 'package:flutter/material.dart';

class DraftPage extends StatefulWidget {
  const DraftPage({Key? key}) : super(key: key);

  @override
  State<DraftPage> createState() => _DraftPageState();
}

class _DraftPageState extends State<DraftPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: _displayImages());
  }

  Widget _displayImages() {
    return Flexible(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(2.0),
            color: Colors.grey,
            child: Image.asset(""),
          );
        },
      ),
    );
  }
}
