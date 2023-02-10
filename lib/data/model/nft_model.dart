import 'package:flutter/material.dart';

class NFTModels {
  String name;
  String image;
  double price;

  NFTModels(this.name,this.image, this.price);
}

List<NFTModels> hypebeastCardList = [
  NFTModels('Hypebeast #2122','assets/nft/hypebeast/hype1.png', 0.5,),
  NFTModels('Hypebeast #2123','assets/nft/hypebeast/hype2.png', 0.6,),
  NFTModels('Hypebeast #2124','assets/nft/hypebeast/hype3.png', 0.4,),
  NFTModels('Hypebeast #2125','assets/nft/hypebeast/hype4.png', 0.5,),
  NFTModels('Hypebeast #2126','assets/nft/hypebeast/hype5.png', 0.6,),
  NFTModels('Hypebeast #2127','assets/nft/hypebeast/hype6.png', 0.4,),
];

List<NFTModels> catsCardList = [
  NFTModels('Cat #4122','assets/nft/cats/cat1.png', 0.5,),
  NFTModels('Cat #4123','assets/nft/cats/cat2.png', 0.6,),
  NFTModels('Cat #4124','assets/nft/cats/cat3.png', 0.4,),
  NFTModels('Cat #4125','assets/nft/cats/cat4.png', 0.5,),
  NFTModels('Cat #4126','assets/nft/cats/cat5.png', 0.6,),
];

List<NFTModels> astroCardList = [
  NFTModels('Astro #3122','assets/nft/astro/astro1.png', 0.5,),
  NFTModels('Astro #3123','assets/nft/astro/astro2.png', 0.6,),
  NFTModels('Astro #3124','assets/nft/astro/astro3.png', 0.4,),
  NFTModels('Astro #3125','assets/nft/astro/astro4.png', 0.5,),
  NFTModels('Astro #3126','assets/nft/astro/astro5.png', 0.6,),
];

List<NFTModels> animeCardList = [
  NFTModels('Anime #1122','assets/nft/anime/anime1.png', 0.5,),
  NFTModels('Anime #1123','assets/nft/anime/anime2.png', 0.6,),
  NFTModels('Anime #1124','assets/nft/anime/anime3.png', 0.4,),
  NFTModels('Anime #1125','assets/nft/anime/anime4.png', 0.5,),
];