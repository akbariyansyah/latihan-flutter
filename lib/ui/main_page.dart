import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/bloc/user_bloc.dart';
import 'package:myapp/model/user.dart';
import 'package:myapp/ui/user_card.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan mvvm"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: () {
              bloc.dispatch(random.nextInt(10) + 1);
            },
            child: Text(
              "Get User",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<UserBloc, User>(
              builder: (context, user) => (user is UninitializedUser)
                  ? Center(
                      child: Container(
                      child: Text("Tidak ada User"),
                    ))
                  : UserCard(user)),
        ],
      ),
    );
  }
}
