import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';


/// Class person is class to define new person.
class Person {
  /// this field is for name of the person
  String name;
  /// this field is for role of the person
  String role;

  /// * [name] must be filled with name of the person, if it doesn't filled, the dafault value will be used.
  ///
  /// * [role] must be filled with role of the person, if it doesn't filled, the dafault value will be used.
  Person({this.name = "no name",this.role = "no role"});
}