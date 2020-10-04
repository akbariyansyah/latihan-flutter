import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/bloc/color_bloc.dart';
import 'package:myapp/bloc/counter_bloc.dart';
import 'package:myapp/ui/draft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, counter) => GestureDetector(
                  onTap: () {
                    counterBloc.dispatch(counter + 1);
                  },
                  child: Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.to_pink);
                    },
                    color: Colors.pink,
                    shape: (color == Colors.pink)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 4),
                          )
                        : CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.to_amber);
                    },
                    color: Colors.amber,
                    shape: (color == Colors.amber)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 4),
                          )
                        : CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.to_purple);
                    },
                    color: Colors.purple,
                    shape: (color == Colors.purple)
                        ? CircleBorder(
                      side: BorderSide(color: Colors.black, width: 4),
                    )
                        : CircleBorder(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
