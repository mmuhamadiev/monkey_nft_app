import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:monkey_nft_app/data/model/nft_list_model.dart';
import 'package:monkey_nft_app/ui/widget/nft_model_card.dart';
import 'dart:math' as math;
import '../constraints.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   double minScrollExtent1 = _scrollController.position.minScrollExtent;
    //   double maxScrollExtent1 = 150;
    //
    //   animateToMixin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 5, _scrollController);
    // });
  }

  // animateToMixin(double max, double min, double direction, int seconds, ScrollController scrollController) {
  //   scrollController.animateTo(direction, duration: Duration(seconds: seconds), curve: Curves.linear).then((value) {
  //     direction = direction == max? min: max;
  //     animateToMixin(max, min, direction, seconds, scrollController);
  //   }
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    final topStatusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bottomStatusBarHeight = MediaQuery.of(context).viewPadding.bottom;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double scale = width / mockUpWidth;
    final double bigTextScaleFactor = scale * 2.2;
    final double mediumTextScaleFactor = scale * 1.3;
    final double smallTextScaleFactor = scale * 1.1;
    final double buttonVerticalPadding = scale * 17;
    final double marginSize = scale * 30;
    final double imageHeightSize = scale * 30;
    final double iconScaleSize = scale * 2.2;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: topStatusBarHeight),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: scale * 200,
                  width: width + 100,
                  child: Transform.rotate(
                    origin: Offset(0.0, 85.0),
                    alignment: Alignment.center,
                    angle: -math.pi / 16,
                    child: CarouselSlider(
                        items: animeCardList.map((e) => NFTModelCard(
                      image: e.image,
                      onlyImage: true,
                    )).toList(), options: CarouselOptions(
                      viewportFraction: 0.33,
                      initialPage: animeCardList.length - 2,
                      autoPlay: true,
                      autoPlayCurve: Curves.linear,
                      autoPlayInterval: Duration(milliseconds: 1000),
                    )),
                  ),
                ),
        // Transform.rotate(
        //   angle: -math.pi / 16,
        //          child: Container(
        //             padding: EdgeInsets.symmetric(vertical: 10),
        //             height: scale * 155,
        //             child: ListView.builder(
        //               controller: _scrollController,
        //                 clipBehavior: Clip.none,
        //                 scrollDirection: Axis.horizontal,
        //                 itemCount: animeCardList.length,
        //                 itemBuilder: (_, index) {
        //                   return Padding(
        //                     padding: const EdgeInsets.symmetric(horizontal: 10),
        //                     child: NFTModelCard(
        //                       image: animeCardList[index].image,
        //                       onlyImage: true,
        //                     ),
        //                   );
        //                 }),
        //           ),
        // ),
                Transform.rotate(
                  angle: -math.pi / 16,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: scale * 155,
                    child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: hypebeastCardList.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: NFTModelCard(
                              image: hypebeastCardList[index].image,
                              onlyImage: true,
                            ),
                          );
                        }),
                  ),
                ),
                Transform.rotate(
                  angle: -math.pi / 16,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: scale * 155,
                    child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: astroCardList.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: NFTModelCard(
                              image: astroCardList[index].image,
                              onlyImage: true,
                            ),
                          );
                        }),
                  ),
                ),
                Transform.rotate(
                  angle: -math.pi / 16,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: scale * 155,
                    child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: catsCardList.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: NFTModelCard(
                              image: catsCardList[index].image,
                              onlyImage: true,
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.4,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                        colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.9),
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                    ]),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: width * 0.7,
                      child: Text(
                        'Discover NFT Collections',
                        textScaleFactor: bigTextScaleFactor,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'AtypDisplay'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: width * 0.7,
                      child: Text(
                        'Explore the top collection of NFTs and buy and sell your NFTs as well.',
                        textScaleFactor: smallTextScaleFactor,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'PlusJakartaSans',
                            color: Colors.black.withOpacity(0.4)),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      margin: EdgeInsets.only(bottom: bottomStatusBarHeight),
                      width: width * 0.9,
                      child: FilledButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(
                                0xFFF4B7A8))
                        ),
                        onPressed: () {

                      }, child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 81,
                              height: 74,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: Icon(Icons.arrow_back_ios_new,color: Colors.black,).animate(onPlay: (controller) => controller.repeat()).fadeIn() // uses `Animate.defaultDuration`
                                  .scale()
                                  .move(begin: Offset(10.0, 0.0), end: Offset(-10.0, 0.0),duration: 1000.ms) // runs after the above w/new duration,
                            ),
                          ],
                        ),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
