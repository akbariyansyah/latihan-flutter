import 'package:flutter/material.dart';
import 'package:myapp/model/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard(this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
              offset: Offset(1, 1),
            )
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blueGrey)),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: NetworkImage(user.avatar))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("ID : " + user.id),
              Text("Name : " + user.firstName + " " + user.lastName),
              Text("Email : " + user.email),
            ],
          )
        ],
      ),
    );
  }
}
