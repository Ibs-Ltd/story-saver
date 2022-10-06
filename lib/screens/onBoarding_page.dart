import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_saver/Widgets/custom_text_view.dart';
import 'package:story_saver/screens/main_page.dart';
import 'package:story_saver/utils/app_colors.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/gradient_1.png',
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      scale: 4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Story',
                        style: TextStyle(
                            color: AppColors.appWhite,
                            fontSize: 40,
                            fontFamily: 'Lato',fontWeight: FontWeight.normal),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Saver',
                            style: TextStyle(
                                color: AppColors.appWhite,
                                fontSize: 40,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Save',
                        style: TextStyle(
                            color: AppColors.appWhite,
                            fontSize: 25,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                  color: AppColors.appWhite,
                                  fontSize: 25,
                                  fontFamily: 'Lato',fontWeight: FontWeight.normal)),
                          TextSpan(
                            text: 'Repost',
                            style: TextStyle(
                                color: AppColors.appWhite,
                                fontSize: 25,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    AppTextView(
                        text: "stories in one click",
                        size: 20,
                        color: AppColors.appWhite),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/images/arrow_forward.png",
                      scale: 3,
                    )))
          ],
        ),
      ),
    );
  }
}
