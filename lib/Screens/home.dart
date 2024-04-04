import 'package:flutter/material.dart';
import 'package:new_app/Screens/menu.dart';
// import 'package:flutter/widgets.dart';
import 'package:new_app/core/constant/app_asset.dart';
import 'package:new_app/core/constant/theme.dart';
import 'package:new_app/core/core_widgets/custom_gradient_scaffold.dart';
import 'package:lottie/lottie.dart';
// import 'packages/flutter/lib/src/material/elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => CustomGradientScaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
                text: TextSpan(
                    style: AppTheme.nunitoFont40
                        .copyWith(color: AppTheme.whiteColor),
                    children: [
                  const TextSpan(text: "Let’s Explore the \n "),
                  TextSpan(
                      text: "Solar System \n",
                      style: AppTheme.openSansFont40
                          .copyWith(color: AppTheme.yellowColor)),
                  const TextSpan(text: "with "),
                  TextSpan(
                      text: "Explorer",
                      style: AppTheme.openSansFont40
                          .copyWith(color: AppTheme.yellowColor)),
                ])),
          ),
          // const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Lottie.asset(AppAsset.animation2, fit: BoxFit.contain),
          ),
          // Image.asset(AppAsset.animation2),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuPage(),
                      ));
                },
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Let’s Go",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(AppAsset.rocket),
                    ])),
          )
        ],
      ),
      image: AppAsset.menuIcon);

  widget({required RichText child}) {}
}
