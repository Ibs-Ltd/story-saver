import 'package:flutter/material.dart';
import 'package:story_saver/Widgets/custom_text_view.dart';
import 'package:story_saver/Widgets/custome_app_bar_design.dart';
import 'package:story_saver/utils/app_colors.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  bool _isShowList=false;
  late ListItem _item;
  final List<ListItem> imageList = [
    ListItem("List #1", "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg"),
    ListItem("List #2", "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg"),
    ListItem("List #3", "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg"),
    ListItem("List #4", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU"),
    ListItem("List #5", "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg"),
    ListItem("List #6", "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg"),
    ListItem("List #7", "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg"),
    ListItem("List #8", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU"),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4;
    final double itemWidth = size.width / 3;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:  const BoxDecoration(
              gradient: AppColors.linearGradient),
          child:_isShowList?_showList(_item) :Padding(
            padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarLayout(),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'My ',
                        style: TextStyle(
                            color: AppColors.appGrey,
                            fontSize: 30,
                            fontFamily: 'Lato'),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Lists',
                            style: TextStyle(
                                color: AppColors.appDarkGrey,
                                fontSize: 30,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _createList();
                      },
                      child: Image.asset(
                        "assets/images/plus.png",scale: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                AppTextView(text: "Filter by user", size: 15, color: AppColors.appGrey),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 90,
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
                            margin: const EdgeInsets.symmetric(horizontal: 10),
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
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    decoration:  const BoxDecoration(
                                        color: Colors.white, shape: BoxShape.circle),
                                    child:  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      foregroundImage: NetworkImage(imageList[index].imageURL),
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
                const SizedBox(height: 20,),
                Expanded(
                  child:GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: (itemWidth / itemHeight),
                    controller: ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: imageList.map((ListItem value) {
                      return InkWell(
                        onTap: (){
                          setState(() {
                            _isShowList=true;
                            _item=value;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.hardLight),
                              image: NetworkImage(
                                value.imageURL,
                              ),
                            ),
                          ),
                          margin:const EdgeInsets.all(3.0),
                          child: Center(child: Text(value.name,style: TextStyle(color: Colors.white),)),
                        ),
                      );
                    }).toList(),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  _createList() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: const Offset(0, 4)),
                ]
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                AppTextView(text: "Create List", size: 20, color: AppColors.appDarkGrey),
                const SizedBox(
                  height: 15,
                ),
                AppTextView(text: "List Name:", size: 15, color: AppColors.appDarkGrey),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 3, bottom: 3, left: 3),
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.appDarkGrey, width: 1)),
                  child:TextFormField(
                    cursorColor: AppColors.appDarkGrey,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                        EdgeInsets.only(left: 5, bottom: 12, top: 12, right: 5),),
                  )
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    //createList code will go here
                  },
                  child: Container(
                      padding: const EdgeInsets.only(top: 3, bottom: 3, left: 3),
                      height: 35,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        color: AppColors.appButtonColor
                      ),
                      child:Center(child: AppTextView(text: "Create",size: 15,color: AppColors.appWhite,))
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget _showList(ListItem item){
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4;
    final double itemWidth = size.width / 3;
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(onPressed: (){
                 setState(() {
                   _isShowList=false;
                 });
                }, icon:Icon(Icons.arrow_back_ios,color: AppColors.appDarkGrey,)),
              ),
              AppBarLayout(),
              const Spacer()
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: AppTextView(
                text: item.name, size: 30, color: AppColors.appDarkGrey),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: (itemWidth / itemHeight),
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: imageList.map((ListItem value) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.hardLight),
                      image: NetworkImage(
                        value.imageURL,
                      ),
                    ),
                  ),
                  margin: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
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
                              shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundImage: NetworkImage("https://i.ibb.co/rkG8cCs/112921315-gettyimages-876284806.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}



class ListItem{
  String name;
  String imageURL;

  ListItem(this.name, this.imageURL);
}