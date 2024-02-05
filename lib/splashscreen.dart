// ignore_for_file: unused_field

import 'dart:async';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

import 'constant/imageasset.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
        //'${StoreLink.imagesitems}/Recording 2023-07-16 152612.mp4',
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    );
_initializeVideoPlayerFuture = _controller.initialize();
    _controller.play();

    // Use the controller to loop the video.
    _controller.setLooping(false);
    Timer(
        const Duration(seconds: 1),
        () => Get.toNamed(AppRoute.home));
    // Initialize the controller and store the Future for later use.
    
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
   // _controller.dispose();
    //_controller.pause();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        title: Text(
          "Aqua Savers",
          style: TextStyle(fontSize: 23, fontFamily: "PlayfairDisplay"),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
                onTap: () {
                  Get.offNamed(AppRoute.home);
                                    _controller.pause();

                  _controller.dispose();
                },
                child: Text("Skip")),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 236, 240, 243),
                Color.fromARGB(255, 242, 242, 248),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Row(
            //   children: [
            //     Container(child: Text("zsdfghjk"),),
            //   ],
            // ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, bottom: 8, left: 8, right: 8),
                    child: Container(
                      height: 350,
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
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
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
                                child:
                                    LottieBuilder.asset(AppImageAsset.server),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
