import 'package:banshaku_setsuyaku_app/widgets/black_circle_indicator.dart';
import 'package:banshaku_setsuyaku_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class Init1View extends StatelessWidget {
  const Init1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: Padding(
        padding: const EdgeInsets.only(top: 56, right: 16, left: 16),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                child: Column(
                  children: [
                    const Text.rich(
                        textAlign: TextAlign.left,
                        TextSpan(
                          children: [
                            TextSpan(text: "このアプリでは、日々の晩酌を"),
                            TextSpan(
                                text: "「缶のお酒」",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "から"),
                            TextSpan(
                                text: "「原酒を割ったお酒」",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "に変えることでどのくらい節約になったのかを記録できます。"),
                          ],
                        )),
                    const SizedBox(height: 30),
                    Image.asset(
                        "assets/images/init_1_view/can_change_cocktail_and_money.png"),
                    const SizedBox(height: 30),
                    const Text("そのために、いくつか初期設定をさせてください。")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const BlackCircleIndicator(total: 5, current: 0),
            const SizedBox(height: 24),
            PrimaryButton(onPressed: () {})
          ],
        ),
      ),
    );
  }
}
