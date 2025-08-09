import 'package:flutter/material.dart';

class SliverHight extends StatelessWidget {
  const SliverHight({
    super.key,
    required this.hight
  });

  final double hight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: hight);
  }
}
