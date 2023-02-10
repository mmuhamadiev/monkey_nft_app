import 'package:flutter/material.dart';

import '../constraints.dart';

class NFTModelCard extends StatelessWidget {
  const NFTModelCard({Key? key, this.name,required this.image, this.price, required this.onlyImage, required this.scale}) : super(key: key);

  final bool onlyImage;
  final String? name;
  final String image;
  final double? price;
  final double? scale;

  @override
  Widget build(BuildContext context) {
    return onlyImage? Container(
      height: 154,
      child: Stack(
        children: [
          Image.asset(image, scale: scale,),
        ],
      ),
    ): Container(
      height: 208,
      width: 184,
      child: Stack(
        children: [
          Image.asset(image, scale: scale,),
          Positioned(
            bottom: 70,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 36,
              width: 80,
              child: Text(
                name!,
                maxLines: 2,
                style: atypDisplayStyle.copyWith(
                    fontSize: 15),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 41,
                    width: 112,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5, color: Colors.white),
                      borderRadius: BorderRadius.circular(21.5),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Price ',
                              style: plusJakartaSansRegularStyle
                                  .copyWith(fontSize: 16),
                            ),
                            TextSpan(
                              text: '${price.toString()} ',
                              style: plusJakartaSansBoldStyle
                                  .copyWith(fontSize: 16),
                            ),
                          ]),
                        ),
                        Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white.withOpacity(0.3),
                          ),
                          child: Image.asset(
                            'assets/nft_icon/etherium.png', scale: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Image.asset('assets/icons/btn/bid_btn.png')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
