import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Person selectedPerson;

  List<Person> persons = [Person("Dani"), Person("Joko")];

  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var person in persons) {
      items.add(
        DropdownMenuItem(
          child: Text(person.name),
          value: person,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Latihan drop down button "),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: DropdownButton(
                    isExpanded: true,
                    style: TextStyle(fontSize: 20,color: Colors.black),
                    items: generateItems(persons),
                    value: selectedPerson,
                    onChanged: (item) {
                      setState(() {
                        selectedPerson = item;
                      });
                    }),
              ),
              SizedBox(height: 20,),
              Text((selectedPerson != null) ? selectedPerson.name : "Belum ada yang terpilih",style: TextStyle(fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}

class Person {
  String name;
  Person(this.name);
}
