import 'package:flutter/material.dart';
import 'package:story_saver/utils/app_colors.dart';

class AppBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/icon.png",
        ),
        const SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
            text: 'Story',
            style: TextStyle(color: AppColors.appGrey, fontSize: 25,fontFamily: 'Lato'),
            /*defining default style is optional */
            children: <TextSpan>[
              TextSpan(
                  text: 'Saver',
                style: TextStyle(color: AppColors.appDarkGrey, fontSize: 25,fontFamily: 'Lato',fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
