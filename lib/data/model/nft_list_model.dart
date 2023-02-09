import 'package:flutter/material.dart';

class NFTCardModel {
  String name;
  Image image;
  double price;

  NFTCardModel(this.name,this.image, this.price);
}

List<NFTCardModel> hypebeastCardList = [
  NFTCardModel('Hypebeast #2122',Image.asset('assets/nft/hypebeast/hype1.png'), 0.5,),
  NFTCardModel('Hypebeast #2123',Image.asset('assets/nft/hypebeast/hype2.png'), 0.6,),
  NFTCardModel('Hypebeast #2124',Image.asset('assets/nft/hypebeast/hype3.png'), 0.4,),
  NFTCardModel('Hypebeast #2125',Image.asset('assets/nft/hypebeast/hype4.png'), 0.5,),
  NFTCardModel('Hypebeast #2126',Image.asset('assets/nft/hypebeast/hype5.png'), 0.6,),
  NFTCardModel('Hypebeast #2127',Image.asset('assets/nft/hypebeast/hype6.png'), 0.4,),
];

List<NFTCardModel> catsCardList = [
  NFTCardModel('Cat #4122',Image.asset('assets/nft/cats/cat1.png'), 0.5,),
  NFTCardModel('Cat #4123',Image.asset('assets/nft/cats/cat2.png'), 0.6,),
  NFTCardModel('Cat #4124',Image.asset('assets/nft/cats/cat3.png'), 0.4,),
  NFTCardModel('Cat #4125',Image.asset('assets/nft/cats/cat4.png'), 0.5,),
  NFTCardModel('Cat #4126',Image.asset('assets/nft/cats/cat5.png'), 0.6,),
];

List<NFTCardModel> astroCardList = [
  NFTCardModel('Astro #3122',Image.asset('assets/nft/astro/astro1.png'), 0.5,),
  NFTCardModel('Astro #3123',Image.asset('assets/nft/astro/astro2.png'), 0.6,),
  NFTCardModel('Astro #3124',Image.asset('assets/nft/astro/astro3.png'), 0.4,),
  NFTCardModel('Astro #3125',Image.asset('assets/nft/astro/astro4.png'), 0.5,),
  NFTCardModel('Astro #3126',Image.asset('assets/nft/astro/astro5.png'), 0.6,),
];

List<NFTCardModel> animeCardList = [
  NFTCardModel('Anime #1122',Image.asset('assets/nft/anime/anime1.png'), 0.5,),
  NFTCardModel('Anime #1123',Image.asset('assets/nft/anime/anime2.png'), 0.6,),
  NFTCardModel('Anime #1124',Image.asset('assets/nft/anime/anime3.png'), 0.4,),
  NFTCardModel('Anime #1125',Image.asset('assets/nft/anime/anime4.png'), 0.5,),
];