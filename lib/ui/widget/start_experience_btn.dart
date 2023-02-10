import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../constraints.dart';

class StartExperienceBottomButton extends StatelessWidget {
  StartExperienceBottomButton(
      {Key? key,
      required this.scale,
      required this.bottomStatusBarHeight,
      required this.mediumTextScaleFactor,
      required this.width})
      : super(key: key);

  final double bottomStatusBarHeight;
  final double mediumTextScaleFactor;
  final double width;
  final double scale;

  final GlobalKey<SlideActionState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomStatusBarHeight),
      width: width * 0.9,
      child: SlideAction(
        key: _key,
        sliderRotate: false,
        sliderButtonIconPadding: 0,
        borderRadius: scale * 45,
        elevation: 0,
        height: scale * 90,
        reversed: true,
        submittedIcon: const Icon(
          Icons.done_all,
          color: Colors.white,
        ),
        onSubmit: () {
          Future.delayed(const Duration(milliseconds: 600), () =>  context.goNamed('/home'));
        },
        sliderButtonIcon: Container(
            width: scale * 81,
            height: scale * 74,
            decoration: BoxDecoration(
                color: staticWhiteColor,
                borderRadius: BorderRadius.circular(scale * 45)),
            child: Stack(
              alignment: Alignment.center,
              children: listOfAnimatedIcons
            )),
        outerColor: startButtonColor,
        child: Container(
          margin: EdgeInsets.only(right: scale * 50),
          child: Text('Start Experience',
              textScaleFactor: mediumTextScaleFactor,
              textAlign: TextAlign.center,
              style: plusJakartaSansBoldStyle),
        ),
      ),
    );
  }

  List<Animate> listOfAnimatedIcons = [
    Icon(
      Icons.arrow_forward_ios,
      color: Colors.black.withOpacity(0.2),
    ).animate(onPlay: (controller) => controller.repeat())
        .fadeIn(duration: 1.seconds)
        .move(
        duration: 800.ms,
        begin: const Offset(-10.0, 0.0),
        end: const Offset(-6.0, 0.0)),
    Icon(
      Icons.arrow_forward_ios,
      color: Colors.black.withOpacity(0.5),
    ).animate(onPlay: (controller) => controller.repeat())
        .fadeIn(duration: 1.seconds)
        .move(
        duration: 800.ms,
        begin: const Offset(-10.0, 0.0),
        end: const Offset(2.0, 0.0)),
    const Icon(Icons.arrow_forward_ios)
        .animate(onPlay: (controller) => controller.repeat())
        .fadeIn(duration: 1.seconds)
        .move(
        duration: 800.ms,
        begin: const Offset(-10.0, 0.0),
        end: const Offset(10.0, 0.0)),
  ];
}