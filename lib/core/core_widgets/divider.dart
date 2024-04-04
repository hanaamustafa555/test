import 'package:flutter/material.dart';
import 'package:new_app/core/constant/theme.dart';

class Divider2 extends StatelessWidget {
  const Divider2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Divider(
        color: AppTheme.whiteColor,
        thickness: 3,
        height: 3,
      ),
    );
  }
}
