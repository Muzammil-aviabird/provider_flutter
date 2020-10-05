import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/HomepageView.dart';
import 'package:provider_flutter/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: ChangeNotifierProvider(
        create :(context) => Model(),
        child: Center(
          child: HomePageView(),
        ),
      ),
    );
  }

}
