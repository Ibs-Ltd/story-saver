import 'package:flutter/material.dart';
import 'package:story_saver/Widgets/custom_text_view.dart';
import 'package:story_saver/Widgets/custome_app_bar_design.dart';
import 'package:story_saver/models/data.dart';
import 'package:story_saver/screens/story_view_page.dart';
import 'package:story_saver/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isShowProfile=false;
  final List<ImageItem> imageList = [
    ImageItem("List #1",
        "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg"),
    ImageItem("List #2",
        "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg"),
    ImageItem("List #3",
        "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg"),
    ImageItem("List #4",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU"),
    ImageItem("List #5",
        "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg"),
    ImageItem("List #6",
        "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg"),
    ImageItem("List #7",
        "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg"),
    ImageItem("List #8",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(gradient: AppColors.linearGradient),
            child:_isShowProfile?_openProfile(): Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarLayout(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: Container(
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, left: 3),
                              height: 35,
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                cursorColor: AppColors.appDarkGrey,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: AppColors.appLightGrey,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Search users",
                                  contentPadding: EdgeInsets.only(
                                      left: 5, bottom: 10, top: 10, right: 5),
                                ),
                              )),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            child: AppTextView(
                              text: "Search",
                              size: 15,
                              color: AppColors.appDarkGrey,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: AppTextView(
                        text: "Recently searched profiles",
                        size: 20,
                        color: AppColors.appGrey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imageList.length,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          //story tap will go here
                        },
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _isShowProfile=true;
                                });
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height: 65,
                                width: 65,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.purple,
                                      Colors.purpleAccent,
                                      Colors.purple,
                                      Colors.purpleAccent
                                    ]),
                                    shape: BoxShape.circle),
                                child: Padding(
                                  //this padding will be you border size
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          foregroundImage: NetworkImage(
                                              imageList[index].imageURL),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            AppTextView(
                                text: "John",
                                size: 12,
                                color: AppColors.appGrey)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Top ',
                        style: TextStyle(
                            color: AppColors.appGrey,
                            fontSize: 18,
                            fontFamily: 'Lato'),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                            text: 'users',
                            style: TextStyle(
                                color: AppColors.appDarkGrey,
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imageList.length,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  StoryScreen(stories: stories),
                            ),
                          );
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.hardLight),
                              image: NetworkImage(
                                imageList[index].imageURL,
                              ),
                            ),
                          ),
                          margin: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 65,
                              width: 65,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.purple,
                                    Colors.purpleAccent,
                                    Colors.purple,
                                    Colors.purpleAccent
                                  ]),
                                  shape: BoxShape.circle),
                              child: Padding(
                                //this padding will be you border size
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        foregroundImage: NetworkImage(
                                            "https://i.ibb.co/rkG8cCs/112921315-gettyimages-876284806.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'My ',
                            style: TextStyle(
                                color: AppColors.appGrey,
                                fontSize: 18,
                                fontFamily: 'Lato'),
                            /*defining default style is optional */
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Lists',
                                style: TextStyle(
                                    color: AppColors.appDarkGrey,
                                    fontSize: 18,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                                color: AppColors.appDarkGrey,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: AppTextView(
                                text: "See More",
                                size: 10,
                                color: AppColors.appWhite,
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imageList.length,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          //story tap will go here
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.hardLight),
                              image: NetworkImage(
                                imageList[index].imageURL,
                              ),
                            ),
                          ),
                          margin: const EdgeInsets.all(3.0),
                          child: Center(
                              child: Text(
                            imageList[index].name,
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _openProfile(){
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4;
    final double itemWidth = size.width / 3;
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(onPressed: (){
                  setState(() {
                    _isShowProfile=false;
                  });
                }, icon:Icon(Icons.arrow_back_ios,color: AppColors.appDarkGrey,)),
              ),
              AppBarLayout(),
              const Spacer()
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundImage: NetworkImage("https://i.ibb.co/rkG8cCs/112921315-gettyimages-876284806.jpg"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextView(
                      text: "USERNAME",
                      size: 25,
                      color: AppColors.appGrey),
                  AppTextView(
                      text: "100000 followers",
                      size: 15,
                      color: AppColors.appGrey),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, int index) =>  InkWell(
                onTap: (){
                  //story tap will go here
                },
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundImage: NetworkImage(imageList[index].imageURL),
                      ),
                    ),
                    AppTextView(text: "highlight",size: 12,color: AppColors.appLightGrey,)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          AppTextView(text: "Active Stories", size: 20, color: AppColors.appDarkGrey),
          const SizedBox(height: 10,),
          Expanded(
            child:GridView.count(
              crossAxisCount: 3,
              childAspectRatio: (itemWidth / itemHeight),
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: imageList.map((ImageItem value) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.hardLight),
                      image: NetworkImage(
                          value.imageURL
                      ),
                    ),
                  ),
                  margin:const EdgeInsets.all(3.0),
                );
              }).toList(),
            ),
          ),

        ],
      ),
    );
  }
}

class ImageItem {
  String name;
  String imageURL;

  ImageItem(this.name, this.imageURL);
}
