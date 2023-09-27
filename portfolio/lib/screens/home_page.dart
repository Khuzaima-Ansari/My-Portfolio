import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_assets.dart';
import 'package:portfolio/constants/app_button.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_text_styles.dart';
import 'package:portfolio/screens/about_me.dart';
import 'package:portfolio/screens/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.github,
  ];
  dynamic socialBI;
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        titleSpacing: 40,
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: AppColors.bgColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Portfolio",
                style: AppTextStyles.headerTextStyle(),
              ),
              const Spacer(),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Home",
                    style: AppTextStyles.headerTextStyle(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "About",
                    style: AppTextStyles.headerTextStyle(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Services",
                    style: AppTextStyles.headerTextStyle(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Contact",
                    style: AppTextStyles.headerTextStyle(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.15,
            // left: size.width * 0.1,
            // right: size.width * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 30),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, It\'s Me',
                          style: AppTextStyles.montserratStyle(
                              color: Colors.white),
                        ),
                        const SizedBox(height: 15.0),
                        Text(
                          'Khuzaima Ansari',
                          style: AppTextStyles.headingStyles(),
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          children: [
                            Text(
                              "And I'm a ",
                              style: AppTextStyles.montserratStyle(
                                  color: Colors.white),
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  'Flutter Developer',
                                  textStyle: AppTextStyles.montserratStyle(
                                      color: Colors.lightBlue),
                                ),
                                TyperAnimatedText('Web Developer',
                                    textStyle: AppTextStyles.montserratStyle(
                                        color: Colors.lightBlue)),
                                TyperAnimatedText('Freelancer',
                                    textStyle: AppTextStyles.montserratStyle(
                                        color: Colors.lightBlue))
                              ],
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                              repeatForever: true,
                            )
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        SizedBox(
                          width: size.width * 0.5,
                          child: Text(
                            'In publishing and graphic design, Lorem ipsum is a placeholder '
                            'text commonly used to demonstrate the visual form of a document'
                            ' or a typeface without relying on meaningful content.',
                            style: AppTextStyles.normalStyle(),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        SizedBox(
                          height: 48,
                          child: ListView.separated(
                            itemCount: socialButtons.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, child) =>
                                const SizedBox(width: 8.0),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    if (value) {
                                      socialBI = index;
                                    } else {
                                      socialBI = null;
                                    }
                                  });
                                },
                                borderRadius: BorderRadius.circular(550.0),
                                hoverColor: AppColors.themeColor,
                                splashColor: AppColors.lawGreen,
                                child: AppButton.buildSocialButton(
                                    asset: socialButtons[index],
                                    hover: socialBI == index ? true : false),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 18.0),
                        AppButton.buildMaterialButton(
                            buttonName: "Download CV", onTap: () {}),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/images/pro1.png",
                      width: 360,
                      height: 390,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 150.0),
              const AboutMe(),
              const SizedBox(height: 150.0),
              const Contact(),
            ],
          ),
        ),
      ),
    );
  }
}
