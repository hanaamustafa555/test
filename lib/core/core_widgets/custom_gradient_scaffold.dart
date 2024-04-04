import 'package:flutter/material.dart';
import 'package:new_app/core/constant/theme.dart';
import 'package:new_app/core/core_widgets/custom_text.dart';

class CustomGradientScaffold extends StatelessWidget {
  final Widget body;
  final String image;
  const CustomGradientScaffold({
    required this.body,
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    var colors = [
              AppTheme.purple1Color,
              AppTheme.purple3Color,
              AppTheme.purple3Color,
            ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppTheme.purple1Color,
        title: CustomText(
            text: 'Explorer',
            style: AppTheme.nunitoFont24.copyWith(color: AppTheme.yellowColor)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(image),
          )
        ],
      ),
      body: Container(
        // container must take max width and height
        //  you can use double.infinity for both
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors,
          ),
        ),
        child: body,
      ),
    );
  }
}
