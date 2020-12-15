import 'package:flutter/material.dart';

class WidgetRaisedButton extends StatelessWidget {
  final Function function;
  final Color color;
  final Widget child;
  final double width;
  final double height;
  final double radius;
  final BoxBorder border;
  final List<BoxShadow> shadow;
  final EdgeInsetsGeometry margin;

  WidgetRaisedButton(
      {@required this.function,
      @required this.color,
      @required this.child,
      @required this.width,
      @required this.height,
      @required this.radius,
      this.border,
      this.shadow,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
          boxShadow: shadow,
          border: border),
      width: width,
      height: height,
      margin: margin,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        onPressed: function,
        color: color,
        child: child,
        elevation: 0.0,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
