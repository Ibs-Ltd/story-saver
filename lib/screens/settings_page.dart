import 'package:flutter/material.dart';
import 'package:story_saver/Widgets/custom_text_view.dart';
import 'package:story_saver/Widgets/custome_app_bar_design.dart';
import 'package:story_saver/screens/membership_page.dart';
import 'package:story_saver/utils/app_colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:  const BoxDecoration(
             gradient: AppColors.linearGradient),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                AppBarLayout(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextView(text: "Settings", size: 25, color: AppColors.appDarkGrey),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppTextView(text: "Help", size: 20, color: AppColors.appDarkGrey),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PremiumMembership(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset("assets/images/cart.png",scale: 2,),
                        const SizedBox(
                          width: 10,
                        ),
                        AppTextView(text: "Become a Premium Member", size: 15, color: AppColors.appDarkGrey)
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                  child: Row(
                    children: [
                      Image.asset("assets/images/restore.png",scale: 2,),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(text: "Restore Premium", size: 15, color: AppColors.appDarkGrey)
                    ],
                  ),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppTextView(text: "About Us", size: 20, color: AppColors.appDarkGrey),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                  child: Row(
                    children: [
                      Image.asset("assets/images/star.png",scale: 2,),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(text: "Rate This App", size: 15, color: AppColors.appDarkGrey)
                    ],
                  ),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                  child: Row(
                    children: [
                      Image.asset("assets/images/share.png",scale: 2,),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(text: "Share", size: 15, color: AppColors.appDarkGrey)
                    ],
                  ),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                  child: Row(
                    children: [
                      Image.asset("assets/images/email.png",scale: 2,),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(text: "Contact Us", size: 15, color: AppColors.appDarkGrey)
                    ],
                  ),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                const SizedBox(
                  height: 80,
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                InkWell(
                  onTap: (){
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                    child: Row(
                      children: [
                        Image.asset("assets/images/profile.png",scale: 2,),
                        const SizedBox(
                          width: 10,
                        ),
                        AppTextView(text: "Accounts", size: 15, color: AppColors.appDarkGrey)
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                  child: Row(
                    children: [
                      Image.asset("assets/images/trash.png",scale: 2,),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(text: "Delete all data", size: 15, color: AppColors.appDarkGrey)
                    ],
                  ),
                ),
                Divider(
                  thickness: 1, color: AppColors.appDarkGrey,height: 0,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}