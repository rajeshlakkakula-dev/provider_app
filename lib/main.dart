import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/model/item_data.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(

        create: (context) => ItemData() ,
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green
        ),
        home: Home(),

    ),


    );


  }



}