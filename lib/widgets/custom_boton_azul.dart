import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function onPressed;

  const BotonAzul({
    @required this.text, 
    @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return RaisedButton(
      elevation: 2.0,
      highlightElevation: 5.0,
      color: Colors.blue,
      shape: StadiumBorder(),
      onPressed: this.onPressed,
      child: Container(
        width: size.width * 0.3,
        height: 55.0,
        child: Center(
          child: Text(this.text,
              style: TextStyle(color: Colors.white, fontSize: 17.0)),
        ),
      ),
    );
  }
}
