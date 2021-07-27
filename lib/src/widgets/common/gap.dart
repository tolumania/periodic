import 'package:flutter/material.dart';

///Space widget
class Gap extends StatelessWidget {
  ///Size.
  final double size;

  ///Private constructor.
  const Gap._({required this.size, Key? key}) : super(key: key);

  ///Small Gap.
  factory Gap.small() => Gap._(size: 8.0);

  ///Medium Gap.
  factory Gap.medium() => Gap._(size: 16.0);

  ///Large Gap.
  factory Gap.large() => Gap._(size: 24.0);

  ///Custom Gap.
  factory Gap.custom(double size) => Gap._(size: size);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
    );
  }
}
