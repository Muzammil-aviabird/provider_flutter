import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/model.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Add"),
              onPressed: (){
                var pro = Provider.of<Model>(context, listen: false);
                pro.addAnotherNumber();
              },
            ),
            RaisedButton(
              child: Text("Clear"),
              onPressed: (){
                var pro = Provider.of<Model>(context, listen: false);
                pro.changeVaalueToZero();
              },
            ),
            Consumer<Model>(
              builder: (context, data, child){
                print(data.getNumber.toString());
                return Text(data.getNumber().toString());
              },

            ),
          ],
        ),
      ),
    );
  }
}
