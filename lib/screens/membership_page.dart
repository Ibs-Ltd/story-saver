import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_saver/Widgets/custom_text_view.dart';
import 'package:story_saver/utils/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PremiumMembership extends StatefulWidget {
  @override
  State<PremiumMembership> createState() => _PremiumMembershipState();
}

class _PremiumMembershipState extends State<PremiumMembership> {
  final List<PurchaseItem> list = [
    PurchaseItem("BRONZE", "\$1.99", "monthly"),
    PurchaseItem("GOLD", "\$24.00", "annual"),
    PurchaseItem("SILVER", "\$12.00", "twice per year"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/gradient.png'),
            fit: BoxFit.cover,
          )),
          child:Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  AppTextView(text: "Choose", size: 30, color: AppColors.appWhite),
                  AppTextView(
                    text: "your plan",
                    size: 30,
                    color: AppColors.appWhite,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppTextView(
                      text: "Benefits", size: 20, color: AppColors.appWhite),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 8,
                              spreadRadius: 3,
                              offset: const Offset(0, 4)),
                        ]),
                    child: Center(
                        child: AppTextView(
                          text: "Remove Watermarks",
                          size: 15,
                          color: AppColors.appDarkGrey,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 8,
                              spreadRadius: 3,
                              offset: const Offset(0, 4)),
                        ]),
                    child: Center(
                        child: AppTextView(
                          text: "Download Stories",
                          size: 15,
                          color: AppColors.appDarkGrey,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 8,
                              spreadRadius: 3,
                              offset: const Offset(0, 4)),
                        ]),
                    child: Center(
                        child: AppTextView(
                          text: "Unlimited Searching",
                          size: 15,
                          color: AppColors.appDarkGrey,
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.4,
                      initialPage: 1,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                    ),
                    items: list
                        .map(
                          (PurchaseItem e) => Container(
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(
                                color: AppColors.appWhite, width: 2)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            AppTextView(
                              text: e.planName,
                              size: 20,
                              color: AppColors.appDarkGrey,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            AppTextView(
                                text: "USD",
                                size: 12,
                                color: AppColors.appWhite),
                            AppTextView(
                              text: e.price,
                              size: 15,
                              color: AppColors.appWhite,fontWeight: FontWeight.bold,),
                            AppTextView(
                                text: e.duration,
                                size: 12,
                                color: AppColors.appWhite),
                          ],
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                child: InkWell(
                  onTap: () {
//continue tap will go here
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 8,
                              spreadRadius: 3,
                              offset: const Offset(0, 4)),
                        ]),
                    child: Center(
                        child: AppTextView(
                          text: "Continue",
                          size: 15,
                          color: AppColors.appDarkGrey,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class PurchaseItem {
  String planName;
  String price;
  String duration;

  PurchaseItem(this.planName, this.price, this.duration);
}
