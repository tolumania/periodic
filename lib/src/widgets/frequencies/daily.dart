import 'package:flutter/material.dart';
import '../common/interval.dart';

///Daily widget.
class Daily extends StatelessWidget {
  ///Default constructor for Daily.
  const Daily({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: IntervalPicker());
  }
}
