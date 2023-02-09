import 'package:flutter/material.dart';

class NFTModelCard extends StatelessWidget {
  NFTModelCard({Key? key, this.name,required this.image, this.price, required this.onlyImage}) : super(key: key);

  bool onlyImage;
  String? name;
  Image image;
  double? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      child: Stack(
        children: [
          image,
          onlyImage? SizedBox.shrink(): Column(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}
