import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 44.0,right: 35.0,top: 10.0,bottom: 10.0),
      child: Container(
        width: width,
        height: 56.0,
        decoration: BoxDecoration(gradient: gradient,borderRadius:BorderRadius.circular(30.0) , boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ]),
        child: Material(

          color: Colors.transparent,
          child: InkWell(
              onTap: onPressed,
              child: Center(
                child: child,
              )),
        ),
      ),
    );
  }
}