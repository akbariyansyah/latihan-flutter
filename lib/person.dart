import 'package:equatable/equatable.dart';

class BasePerson {}

class Person extends BasePerson with EquatableMixin {
  String name;
  int age;

  Person({this.name = "No name", this.age = 0});

  @override
  // TODO: implement props
  List<Object> get props => [name,age];

  // @override
  // bool operator ==(Object other) {
  //   if (other is Person) {
  //     if (name == other.name && age == other.age) {
  //       return true;
  //     }
  //   } else {
  //     return false;
  //   }
  // }
}
