
import 'package:flutter/material.dart';

class RYWorkbench extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("积微运网",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            pinned: true,
          ),
        ],
      ),
    );
  }
}
