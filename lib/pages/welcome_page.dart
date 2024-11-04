import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/utils/constants/image_strings.dart';
import 'package:travel_app/widget/buttons/responsive_button.dart';
import 'package:travel_app/widget/text/app_large_text.dart';
import 'package:travel_app/widget/text/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, indexslider) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(HImages.onBoardingImage[indexslider]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppLargeText(text: "Trips"),
                      const AppText(text: "Mountains", fontSize: 30),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with endurance test",
                          color: AppColors.textColor2,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 40),
                      ResponsiveButton(width: 120),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDot) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: indexslider == indexDot ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: indexslider == indexDot
                              ? AppColors.mainColor
                              : AppColors.mainColor.withOpacity(0.5),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
