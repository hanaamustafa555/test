import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_asset.dart';
import 'package:new_app/core/constant/app_asset_text.dart';
import 'package:new_app/core/core_widgets/custom_gradient_scaffold.dart';

import 'page3.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List<String> planets = [
      AppAsset.earth,
      AppAsset.mercury,
      AppAsset.jupiter,
      AppAsset.mars,
      AppAsset.saturn,
      AppAsset.venus,
      AppAsset.earth,
      AppAsset.mercury,
      AppAsset.jupiter,
      AppAsset.mars,
      AppAsset.saturn,
      AppAsset.venus,
      AppAsset.earth,
      AppAsset.mercury,
      AppAsset.jupiter,
      AppAsset.mars,
      AppAsset.saturn,
      AppAsset.venus,
    ];
    List<String> planetsDetails = [
      AppAssetTexts.earthDetails,
      AppAssetTexts.mercuryDetails,
      AppAssetTexts.jupiterDetails,
      AppAssetTexts.marsDetails,
      AppAssetTexts.saturnDetails,
      AppAssetTexts.venusDetails,
      AppAssetTexts.earthDetails,
      AppAssetTexts.mercuryDetails,
      AppAssetTexts.jupiterDetails,
      AppAssetTexts.marsDetails,
      AppAssetTexts.saturnDetails,
      AppAssetTexts.venusDetails,
      AppAssetTexts.earthDetails,
      AppAssetTexts.mercuryDetails,
      AppAssetTexts.jupiterDetails,
      AppAssetTexts.marsDetails,
      AppAssetTexts.saturnDetails,
      AppAssetTexts.venusDetails,
    ];
    return SafeArea(
      child: CustomGradientScaffold(
          body: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              mainAxisSpacing: 10,
              crossAxisSpacing: 2,
              physics: const BouncingScrollPhysics(),
              children: List.generate(
                  planets.length,
                  (index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(
                                images: (planets[index]),
                                text: (planetsDetails[index]),
                              ),
                            ));
                      },
                      child: Image.asset(planets[index])))),
          image: AppAsset.xIcon),
    );
  }
}
