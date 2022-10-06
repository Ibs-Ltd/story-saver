import 'package:flutter/material.dart';
import 'package:story_saver/Widgets/custom_text_view.dart';
import 'package:story_saver/screens/home_page.dart';
import 'package:story_saver/screens/list_page.dart';
import 'package:story_saver/screens/settings_page.dart';
import 'package:story_saver/screens/studio_page.dart';
import 'package:story_saver/utils/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const ListPage(),
    const StudioPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xf0d7e6fa),
              Color(0xf0d1d3f6),
              Color(0xf0ebeff5),
            ]),),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.appWhite,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: pageIndex == 0
                        ? Icon(
                      Icons.home,
                      color: AppColors.appDarkGrey,
                      size: 30,
                    )
                        : Icon(
                      Icons.home,
                      color: AppColors.appLightGrey,
                      size: 30,
                    ),
                  ),
                  AppTextView(text: "Home",size: 12,color: AppColors.appDarkGrey,)
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? FaIcon(
                      FontAwesomeIcons.list,
                      color: AppColors.appDarkGrey,
                      size: 25,
                    )
                        : FaIcon(
                      FontAwesomeIcons.list,
                      color: AppColors.appLightGrey,
                      size: 25,
                    ),
                  ),
                  AppTextView(text: "List",size: 12,color: AppColors.appDarkGrey,)
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? FaIcon(FontAwesomeIcons.brush,color: AppColors.appDarkGrey,
                        size: 25)
                        : FaIcon(
                      FontAwesomeIcons.brush,
                      color: AppColors.appLightGrey,
                      size: 25,
                    ),
                  ),
                  AppTextView(text: "Studio",size: 12,color: AppColors.appDarkGrey,)
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: pageIndex == 3
                        ? Icon(
                      Icons.settings,
                      color: AppColors.appDarkGrey,
                      size: 30,
                    )
                        : Icon(
                      Icons.settings,
                      color: AppColors.appLightGrey,
                      size: 30,
                    ),
                  ),
                  AppTextView(text: "Settings",size: 12,color: AppColors.appDarkGrey,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}