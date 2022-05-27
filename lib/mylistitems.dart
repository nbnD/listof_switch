import 'package:flutter/material.dart';

class MyListItems extends StatefulWidget {
  final String title;
  const MyListItems({ Key? key, required this.title }) : super(key: key);

  @override
  State<MyListItems> createState() => _MyListItemsState();
}

class _MyListItemsState extends State<MyListItems> {
    bool isSelected = false;

void toggleSwitch(bool value){
    setState(() {
      isSelected=!isSelected;
    });
}

  @override
  Widget build(BuildContext context) {
    return ListTile(

      tileColor: isSelected?Colors.green:Colors.white,
      title:  Text("Title"+widget.title),
      subtitle: Text(
        isSelected ? "Selected" : 'Not Selected',
      ),
     
      trailing: Switch(value: isSelected , onChanged: toggleSwitch,activeColor: Colors.orange,)
    );
  }
}