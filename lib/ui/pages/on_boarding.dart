import 'package:flutter/material.dart';
import 'package:monkey_nft_app/ui/widget/transformed_carousel_slider.dart';
import '../constraints.dart';
import '../widget/start_experience_btn.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  @override
  Widget build(BuildContext context) {
    final topStatusBarHeight = MediaQuery
        .of(context)
        .viewPadding
        .top;
    final bottomStatusBarHeight = MediaQuery
        .of(context)
        .viewPadding
        .bottom;
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;

    final double scale = width / mockUpWidth;
    final double bigTextScaleFactor = scale * 2.5;
    final double mediumTextScaleFactor = scale * 1.7;
    final double smallTextScaleFactor = scale * 1.2;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: topStatusBarHeight),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
                children: listOfTransformableCarouselSlider
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.5,
                decoration: BoxDecoration(
                  gradient: boxGradient,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        'Discover NFT Collections',
                        textScaleFactor: bigTextScaleFactor,
                        textAlign: TextAlign.center,
                        style: atypDisplayStyle.copyWith(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height:scale * 20,
                    ),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        'Explore the top collection of NFTs and buy and sell your NFTs as well.',
                        textScaleFactor: smallTextScaleFactor,
                        textAlign: TextAlign.center,
                        style: plusJakartaSansRegularStyle.copyWith(color: Colors.black.withOpacity(0.4)),
                      ),
                    ),
                    SizedBox(
                      height: scale * 40,
                    ),
                    StartExperienceBottomButton(scale: scale, bottomStatusBarHeight: bottomStatusBarHeight, mediumTextScaleFactor: mediumTextScaleFactor, width: width,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

}