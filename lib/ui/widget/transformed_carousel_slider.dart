import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../data/model/nft_model.dart';
import 'package:monkey_nft_app/ui/widget/nft_model_card.dart';
import '../constraints.dart';

class TransformableCarouselSlider extends StatelessWidget {
  TransformableCarouselSlider({Key? key,required this.isReverse, required this.listOfNFTCards, required this.autoPlayAnimationDuration, required this.autoPlayInterval, required this.isTransformed, required this.scrollAxisDirection, required this.autoPlay}) : super(key: key);

  final List<NFTModels> listOfNFTCards;
  final Duration autoPlayAnimationDuration;
  final Duration autoPlayInterval;
  bool isReverse;
  bool isTransformed;
  bool autoPlay;
  Axis scrollAxisDirection;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final double scale = width / mockUpWidth;
    return isTransformed? Transform.rotate(
      origin: Offset(0.0, scale * 85.0),
      alignment: Alignment.center,
      angle: -math.pi / (scale * 16),
      child: Container(
        height: scale * 155,
        width: width,
        padding: EdgeInsets.symmetric(vertical: scale * 5),
        child: CarouselSlider(
          items: listOfNFTCards
              .map((e) => NFTModelCard(
            image: e.image,
            onlyImage: true,
            scale: scale,
          ),)
              .toList(),
          options: CarouselOptions(
            scrollDirection: scrollAxisDirection,
            clipBehavior: Clip.none,
            viewportFraction: 0.33,
            initialPage: listOfNFTCards.length - 2,
            reverse: isReverse,
            autoPlay: autoPlay,
            autoPlayCurve: Curves.linear,
            autoPlayAnimationDuration: autoPlayAnimationDuration,
            autoPlayInterval: autoPlayInterval,
          ),
        ),
      ),
    ): CarouselSlider(
      items: listOfNFTCards
          .map((e) => NFTModelCard(
        image: e.image,
        onlyImage: true,
        scale: scale,
      ),)
          .toList(),
      options: CarouselOptions(
        scrollDirection: scrollAxisDirection,
        clipBehavior: Clip.none,
        viewportFraction: 0.33,
        initialPage: listOfNFTCards.length - 2,
        reverse: isReverse,
        autoPlay: autoPlay,
        autoPlayCurve: Curves.linear,
        autoPlayAnimationDuration: autoPlayAnimationDuration,
        autoPlayInterval: autoPlayInterval,
      ),
    );
  }
}


List<TransformableCarouselSlider> listOfTransformableCarouselSlider = [
  TransformableCarouselSlider(
    isReverse: false,
    listOfNFTCards: animeCardList,
    autoPlayAnimationDuration: const Duration(seconds: 2),
    autoPlayInterval: const Duration(milliseconds: 2000),
    isTransformed: true,
    scrollAxisDirection: Axis.horizontal,
    autoPlay: true,
  ),
  TransformableCarouselSlider(
    isReverse: true,
    listOfNFTCards: hypebeastCardList,
    autoPlayAnimationDuration: const Duration(seconds: 2),
    autoPlayInterval: const Duration(milliseconds: 2000),
    isTransformed: true,
    scrollAxisDirection: Axis.horizontal,
    autoPlay: true,
  ),
  TransformableCarouselSlider(
    isReverse: false,
    listOfNFTCards: astroCardList,
    autoPlayAnimationDuration: const Duration(seconds: 2),
    autoPlayInterval: const Duration(milliseconds: 2000),
    isTransformed: true,
    scrollAxisDirection: Axis.horizontal,
    autoPlay: true,
  ),
  TransformableCarouselSlider(
    isReverse: false,
    listOfNFTCards: catsCardList,
    autoPlayAnimationDuration: const Duration(seconds: 3),
    autoPlayInterval: const Duration(milliseconds: 3000),
    isTransformed: true,
    scrollAxisDirection: Axis.horizontal,
    autoPlay: true,
  ),
];