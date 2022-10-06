import 'package:flutter/material.dart';
import 'package:story_saver/Widgets/custom_text_view.dart';
import 'package:story_saver/Widgets/custome_app_bar_design.dart';
import 'package:story_saver/utils/app_colors.dart';

class StudioPage extends StatefulWidget {
  const StudioPage({Key? key}) : super(key: key);

  @override
  State<StudioPage> createState() => _StudioPageState();
}

class _StudioPageState extends State<StudioPage> {
  bool _isCreateContent=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:_isCreateContent?_createContentView(): Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient:AppColors.linearGradient
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarLayout(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextView(
                          text: "Studio",
                          size: 30,
                          color: AppColors.appDarkGrey),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isCreateContent=true;
                          });
                        },
                        child: Image.asset(
                          "assets/images/plus.png",
                          scale: 1.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/timer.png",
                        scale: 1.4,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(
                          text: "Scheduled",
                          size: 20,
                          color: AppColors.appDarkGrey)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://i.ibb.co/rkG8cCs/112921315-gettyimages-876284806.jpg',
                              ),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.all(3),
                        width: 110,
                        height: 70,
                        decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                AppTextView(
                                    text: "Date: ",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                                AppTextView(
                                    text: "01/09/2022",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                              ],
                            ),
                            Row(
                              children: [
                                AppTextView(
                                    text: "Time: ",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                                AppTextView(
                                    text: "5:00 PM",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.appDarkGrey,
                    height: 0,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/waiting.png",
                        scale: 1.4,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(
                          text: "Waiting",
                          size: 20,
                          color: AppColors.appDarkGrey)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://i.ibb.co/rkG8cCs/112921315-gettyimages-876284806.jpg',
                              ),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.all(3),
                        width: 110,
                        height: 70,
                        decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                AppTextView(
                                    text: "Date: ",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                                AppTextView(
                                    text: "01/09/2022",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                              ],
                            ),
                            Row(
                              children: [
                                AppTextView(
                                    text: "Time: ",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                                AppTextView(
                                    text: "5:00 PM",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.appDarkGrey,
                    height: 0,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/check.png",
                        scale: 1.4,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AppTextView(
                          text: "Posted",
                          size: 20,
                          color: AppColors.appDarkGrey)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://i.ibb.co/rkG8cCs/112921315-gettyimages-876284806.jpg',
                              ),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.all(3),
                        width: 110,
                        height: 70,
                        decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                AppTextView(
                                    text: "Date: ",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                                AppTextView(
                                    text: "01/09/2022",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                              ],
                            ),
                            Row(
                              children: [
                                AppTextView(
                                    text: "Time: ",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                                AppTextView(
                                    text: "5:00 PM",
                                    size: 12,
                                    color: AppColors.appLightGrey),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _createContentView(){
    return  Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(gradient: AppColors.linearGradient),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isCreateContent=false;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.appDarkGrey,
                  )),
              AppBarLayout(),
              const SizedBox(),
              AppTextView(
                  text: "Done", size: 12, color: AppColors.appDarkGrey)
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        AppTextView(
            text: "Create Content", size: 25, color: AppColors.appDarkGrey,fontWeight: FontWeight.w500,),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          color: AppColors.appWhite,
          child: SizedBox(
            height: 300,
            width: 250,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://i.ibb.co/rkG8cCs/112921315-gettyimages-876284806.jpg",
                  width: 250,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: (MediaQuery.of(context).size.width - 250) / 2,
                  child: Container(
                    width: 60,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Icon(
                          Icons.repeat,
                          size: 12,
                          color: AppColors.appDarkGrey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppTextView(
                            text: "repost",
                            size: 10,
                            color: AppColors.appDarkGrey)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.appDarkGrey)),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                height: 5,
                                width: 20,
                                color: AppColors.appButtonColor2,
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.appDarkGrey)),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 5,
                                width: 20,
                                color: AppColors.appButtonColor2,
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.appDarkGrey)),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                height: 5,
                                width: 20,
                                color: AppColors.appButtonColor2,
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.appDarkGrey)),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: 5,
                                width: 20,
                                color: AppColors.appButtonColor2,
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.appDarkGrey)),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              left: 10,
                              right: 10,
                              child: Container(
                                height: 5,
                                width: 20,
                                color: AppColors.appButtonColor2,
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.appDarkGrey)),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              AppTextView(
                  text: "Username:",
                  size: 15,
                  color: AppColors.appDarkGrey),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: AppColors.appDarkGrey, width: 1)),
                  child: TextFormField(
                    cursorColor: AppColors.appDarkGrey,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 5, bottom: 14, top: 14, right: 5),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              AppTextView(
                  text: "Hashtags:",
                  size: 15,
                  color: AppColors.appDarkGrey),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: AppColors.appDarkGrey, width: 1)),
                  child: TextFormField(
                    cursorColor: AppColors.appDarkGrey,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 5, bottom: 14, top: 14, right: 5),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              AppTextView(
                  text: "Caption:", size: 15, color: AppColors.appDarkGrey),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: AppColors.appDarkGrey, width: 1)),
                  child: TextFormField(
                    cursorColor: AppColors.appDarkGrey,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 5, bottom: 14, top: 14, right: 5),
                      isDense: true
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      //continue tap will go here
                    },
                    child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: AppColors.appButtonColor2,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 8,
                                  spreadRadius: 3,
                                  offset: const Offset(0, 4)),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/timer.png",
                              scale: 3,
                              color: AppColors.appWhite,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppTextView(
                              text: "Schedule",
                              size: 12,
                              color: AppColors.appWhite,
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //continue tap will go here
                    },
                    child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xffF58529),
                                  Color(0xffDD2A7B),
                                  Color(0xff8134AF),
                                  Color(0xff515BD4),
                                ]),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 8,
                                  spreadRadius: 3,
                                  offset: const Offset(0, 4)),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/check.png",
                              scale: 3,
                              color: AppColors.appWhite,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppTextView(
                              text: "Post",
                              size: 12,
                              color: AppColors.appWhite,
                            )
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
