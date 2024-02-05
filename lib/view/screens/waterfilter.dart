import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:video_player/video_player.dart';

import '../../linkApi.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<String> items = [
    "Components",
    "Steps",
  "Pottery"
  ];
  List<String> itemss = [
    "0:00 - 6:39 Turning dirt to clay",
    "6:40-8:22  Clay vase tutorial",
  "8:23-8:44 Clay plate tutorial"
  ];
  int current = 0;
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
 late VideoPlayerController _controller2;
  late Future<void> _initializeVideoPlayerFuture2;
  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        '${StoreLink.imagesitems}/Diyvideo.mp4',
       //  'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    );
     _controller2 = VideoPlayerController.networkUrl(
      Uri.parse(
        '${StoreLink.imagesitems}/potteryvideo.mp4',
         //'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();
    _initializeVideoPlayerFuture2 = _controller2.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
        _controller2.setLooping(true);

  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    _controller2.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu_outlined),
        backgroundColor: Color.fromRGBO(8, 76, 133, 1),
elevation: 0.0,
          centerTitle: true,

        title: Text(
          "DIY Filter",
          style: TextStyle(fontSize: 26,fontFamily: "PlayfairDisplay"),
        ),
      ),
      drawer: DRAWERMAIN(),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 12, bottom: 8),
                  child: Text("What is DIY filter ?",
                      style: const TextStyle(
                        fontSize: 22,
                        color: AppColor.fourthColor,
                        fontWeight: FontWeight.bold,
          fontFamily: "Nunito"
                        //decoration: TextDecoration.underline\
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text(
                      "DIY water filtration systems are homemade devices that use various materials to filter water.The more layers, the better the purification will be.The idea is to remove contaminants and impurities from the water, making it safe to use.",
                      maxLines: 4,
                      style: const TextStyle(
                        fontSize: 14,
          
                        color: AppColor.kTextColorFarming,
          
                        fontWeight: FontWeight.bold,
          
                        //decoration: TextDecoration.underline\
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 12.0, right: 12, left: 12, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 6, 60, 105)),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    child: Container(
                      height: 170,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
           image:NetworkImage('${StoreLink.imagesitems}/Filter/WaterFilter.jpg'), 
                          // image: CachedNetworkImage(imageUrl: "imageUrl"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 390,
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      /// CUSTOM TABBAR
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        current = index;
                                      //  print(current);
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      margin: const EdgeInsets.all(5),
                                      width: 110,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: current == index
                                            ? AppColor.fourthColor
                                            : Colors.white54,
                                        borderRadius: current == index
                                            ? BorderRadius.circular(15)
                                            : BorderRadius.circular(10),
                                        border: current == index
                                            ? Border.all(
                                                color: AppColor.fourthColor,
                                                width: 2)
                                            : null,
                                      ),
                                      child: Center(
                                        child: Text(
                                          items[index],
                                          style: TextStyle(fontFamily: "PlayfairDisplay",fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: current == index
                                                  ? Colors.white
                                                  : Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                      visible: current == index,
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                        decoration: const BoxDecoration(
                                            color: AppColor.fourthColor,
                                            shape: BoxShape.circle),
                                      )),
                                ],
                              );
                            }),
                      ),
          
                      /// MAIN BODY
                    if(current==0)
                      Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: GridView.count(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: Color.fromARGB(255, 232, 229, 35)),
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              image: DecorationImage(
           image:NetworkImage('${StoreLink.imagesitems}/Filter/SandFilter.png'), 
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: Color.fromARGB(255, 74, 74, 65)),
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              image: DecorationImage(
                                  image: NetworkImage('${StoreLink.imagesitems}/Filter/GravelWaterFilter.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5, color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              image: DecorationImage(
                                  image:NetworkImage('${StoreLink.imagesitems}/Filter/CoalFilter.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: Color.fromARGB(255, 143, 108, 13)),
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              image: DecorationImage(
           image:NetworkImage('${StoreLink.imagesitems}/Filter/CottonFilter.png'), 
                                  fit: BoxFit.fill)),
                        ),
                      ],
          
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // crossAxisCount: 2,
                      // mainAxisSpacing: 10,
                      // crossAxisSpacing: 10),
                    ),
                  ),
                ),
                                  if(current==1)
                                Padding(
              padding: const EdgeInsets.only(top:30.0,bottom: 8,left: 8,right: 8),
              child: Container( 
                height: 250,
                decoration: BoxDecoration(
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 6, 60, 105)),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                child: InkWell(
                  onDoubleTap: () {
                     setState(() {
              // If the video is playing, pause it.
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                // If the video is paused, play it.
                _controller.play();
              }
            });
                  },
                  child: FutureBuilder(
                    
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                    
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the video.
                        return AspectRatio(
                          
                          aspectRatio: _controller.value.aspectRatio,
                          // Use the VideoPlayer widget to display the video.
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        // If the VideoPlayerController is still initializing, show a
                        // loading spinner.
                        return Center(
                          child: LottieBuilder.asset(AppImageAsset.server),
                        );
                      }
                    },
                  ),
                ),
            
              ),
            ),  
            if(current==2)
                                Padding(
              padding: const EdgeInsets.only(top:15.0,bottom: 8,left: 8,right: 8),
              child: Column(
                children: [
                  Container( 
                    height: 205,
                    decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(255, 6, 60, 105)),
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                        ),
                    child: InkWell(
                      onDoubleTap: () {
                         setState(() {
                  // If the video is playing, pause it.
                  if (_controller2.value.isPlaying) {
                    _controller2.pause();
                  } else {
                    // If the video is paused, play it.
                    _controller2.play();
                  }
            });
                      },
                      child: FutureBuilder(
                        
                        future: _initializeVideoPlayerFuture2,
                        builder: (context, snapshot) {
                        
                          if (snapshot.connectionState == ConnectionState.done) {
                            // If the VideoPlayerController has finished initialization, use
                            // the data it provides to limit the aspect ratio of the video.
                            return AspectRatio(
                              
                              aspectRatio: _controller2.value.aspectRatio,
                              // Use the VideoPlayer widget to display the video.
                              child: VideoPlayer(_controller2),
                            );
                          } else {
                            // If the VideoPlayerController is still initializing, show a
                            // loading spinner.
                            return Center(
                              child: LottieBuilder.asset(AppImageAsset.server),
                            );
                          }
                        },
                      ),
                    ),
            
                  ),
                  SizedBox(height: 10,),
                  Text("Note : Please place a Filter paper between each two components",style: TextStyle(color: Colors.red,fontSize: 12),)
                                     , SizedBox(height: 10,),
                          SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: itemss.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                     //   current = index;
                                      //  print(current);
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      margin: const EdgeInsets.all(5),
                                      width: 110,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color:
                                          AppColor.fourthColor,
                                        borderRadius: 
                                            BorderRadius.circular(15)
,                                        border: 
                                             Border.all(
                                                color: AppColor.fourthColor,
                                                width: 2)
                                            ,
                                      ),
                                      child: Center(
                                        child: Text(
                                          itemss[index],
                                          style: TextStyle(fontFamily: "PlayfairDisplay",fontSize: 7,
                                              fontWeight: FontWeight.w500,
                                              color: 
                                                   Colors.white
                                                  ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Visibility(
                                  //     visible: current == index,
                                  //     child: Container(
                                  //       width: 5,
                                  //       height: 5,
                                  //       decoration: const BoxDecoration(
                                  //           color: AppColor.fourthColor,
                                  //           shape: BoxShape.circle),
                                  //     )),
                                ],
                              );
                            }),
                      ),             

                ],
              ),
            ),  
          
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
