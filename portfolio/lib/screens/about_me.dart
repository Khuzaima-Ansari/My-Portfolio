import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_assets.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      // height: size.height,
      width: size.width,
      color: AppColors.bgColor2,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 30),
        child: Row(
          children: [
            Image.asset(
              AppAssets.profile2,
              height: 450,
              width: 400,
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'About',
                        style: AppTextStyles.headingStyles(),
                        children: [
                          TextSpan(
                            text: 'Me',
                            style: AppTextStyles.headingStyles(
                                color: AppColors.robinEdgeBlue),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Flutter Developer !',
                    style: AppTextStyles.montserratStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "lorem epsum lorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsum em epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsumlorem epsum",
                    style: AppTextStyles.normalStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
