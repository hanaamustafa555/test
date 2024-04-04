import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app/core/constant/app_asset.dart';
import 'package:new_app/core/constant/app_asset_text.dart';
import 'package:new_app/core/core_widgets/custom_gradient_scaffold.dart';
import 'package:new_app/core/core_widgets/divider.dart';
import '../core/core_widgets/read_me_text.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.images, required this.text});
  final String images;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomGradientScaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                images,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider2(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ReadMeTextWidget(text: text
                      // List.generate(
                      //     planetsDetails.length, (index) => InkWell),
                      ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        image: AppAsset.menuIcon);
  }
}
