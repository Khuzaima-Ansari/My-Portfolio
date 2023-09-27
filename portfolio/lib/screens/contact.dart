import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_button.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_text_styles.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.bgColor,
      height: size.height,
      width: size.width,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.2),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Contact',
                style: AppTextStyles.headingStyles(fontSize: 30),
                children: [
                  TextSpan(
                    text: 'Me!',
                    style: AppTextStyles.headingStyles(
                        fontSize: 30, color: AppColors.robinEdgeBlue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Full Name'),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Email Address'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    style: AppTextStyles.normalStyle(),
                    cursorColor: Colors.white,
                    decoration: buildInputDecoration(hintText: 'Mobile Number'),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Email Aubject'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    maxLines: 15,
                    decoration: buildInputDecoration(hintText: 'Your Message'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            AppButton.buildMaterialButton(buttonName: 'Submit', onTap: () {})
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.comfortaaStyle(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      filled: true,
      fillColor: AppColors.bgColor2,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    );
  }
}
