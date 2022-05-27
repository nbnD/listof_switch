import 'package:flutter/material.dart';

import 'mylistitems.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Switch List"),),
      body: Padding(padding: const EdgeInsets.all(10), child: ListView.builder(
      itemCount:10,
      shrinkWrap: true,
      itemBuilder: (ctx,i){
      return MyListItems(title:i.toString());
    }),)
    );

    
  }
}