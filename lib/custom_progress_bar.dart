import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double width;
  final int value;
  final int total;
  CustomProgressBar({this.width, this.value, this.total});

  @override
  Widget build(BuildContext context) {
    double ratio = value / total;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.timer, color: Colors.grey[700]),
        Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: width * ratio,
                height: 10,
                decoration: BoxDecoration(
                    color: (ratio < 0.2)
                        ? Colors.red
                        : (ratio < 0.3)
                            ? Colors.deepOrange
                            : (ratio < 0.4)
                                ? Colors.pinkAccent
                                : (ratio < 0.6)
                                    ? Colors.yellow
                                    : (ratio < 0.7)
                                        ? Colors.lightGreen
                                        : (ratio < 0.8)
                                            ? Colors.green
                                            : Colors.cyan,
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        )
      ],
    );
  }
}
