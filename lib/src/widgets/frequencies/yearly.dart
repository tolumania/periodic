import 'package:flutter/material.dart';
import '../common/interval.dart';

///Yearly widget.
class Yearly extends StatelessWidget {
  ///Default constructor for Yearly.
  const Yearly({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: IntervalPicker());
  }
}
