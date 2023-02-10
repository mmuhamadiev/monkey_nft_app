import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../data/model/nft_model.dart';
import '../constraints.dart';
import '../widget/nft_model_card.dart';
import '../widget/transformed_carousel_slider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final topStatusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bottomStatusBarHeight = MediaQuery.of(context).viewPadding.bottom;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double scale = width / mockUpWidth;
    final double bigTextScaleFactor = scale * 2.5;
    final double mediumTextScaleFactor = scale * 1.7;
    final double smallTextScaleFactor = scale * 1;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                stretch: true,
                automaticallyImplyLeading: false,
                expandedHeight: height * 0.29,
                pinned: true,
                floating: true,
                snap: true,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: const Alignment(0.8, 0.0),
                      image: AssetImage(
                        'assets/nft/hypebeast_bg_home_page.png',
                      ),
                    )
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 25,
                        top: 45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 85,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Text(
                                    'Hypebeast',
                                    textAlign: TextAlign.center,
                                    style: atypDisplayStyle.copyWith(fontSize: 44),
                                  ),
                                  Positioned(
                                    bottom: 1,
                                    child: Row(
                                      children: [
                                        RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: [
                                            TextSpan(
                                              text: 'By ',
                                              style: plusJakartaSansRegularStyle
                                                  .copyWith(fontSize: 16),
                                            ),
                                            TextSpan(
                                              text: 'Matt Sypien ',
                                              style: plusJakartaSansBoldStyle
                                                  .copyWith(fontSize: 16),
                                            ),
                                          ]),
                                        ),
                                        Image.asset(
                                          'assets/icons/verified_white.png',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 132,
                                  width: 97,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(0.0, 1.0))
                                    ],
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color(0xffF4B7A8),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 34,
                                          width: 34,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.white.withOpacity(0.3),
                                          ),
                                          child: Image.asset(
                                              'assets/nft_icon/etherium.png'),
                                        ),
                                        Text(
                                          '0.53',
                                          style: plusJakartaSansBoldStyle.copyWith(
                                              fontSize: 27),
                                        ),
                                        Text(
                                          'Floor Price',
                                          style: plusJakartaSansRegularStyle.copyWith(
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 86,
                                      width: 97,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.white),
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white.withOpacity(0.3),
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '5.6k',
                                              style: plusJakartaSansBoldStyle
                                                  .copyWith(fontSize: 27),
                                            ),
                                            Text(
                                              'Owners',
                                              style: plusJakartaSansRegularStyle
                                                  .copyWith(fontSize: 11),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 86,
                                      width: 97,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.white),
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '9.9k',
                                              style:
                                                  plusJakartaSansBoldStyle.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 27),
                                            ),
                                            Text(
                                              'Owners',
                                              style: plusJakartaSansRegularStyle
                                                  .copyWith(
                                                      color: Colors.grey,
                                                      fontSize: 11),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
              ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                    [
                  MasonryGridView.count(
                    shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.all(20),
                          itemCount: hypebeastCardList.length,
                          crossAxisCount: 2,
                  mainAxisSpacing: 10,
                          itemBuilder: (_, index) {
                            if (index == 1) {
                              return Column(
                                children: [
                                  Container(
                                    width: 185,
                                    height: 67,
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: FilledButton(
                                        onPressed: () {

                                    },
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStatePropertyAll(Color(0xff303841))
                                        ),
                                        child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Filter',
                                          style:
                                          plusJakartaSansBoldStyle.copyWith(
                                              fontSize: 18),
                                        ),
                                        Spacer(),
                                        Image.asset('assets/icons/btn/filter_btn.png'),
                                      ],
                                    )),
                                  ),
                                  Center(
                                      child: NFTModelCard(
                                        name: hypebeastCardList[index].name,
                                        image: hypebeastCardList[index].image,
                                        price: hypebeastCardList[index].price,
                                        onlyImage: false,
                                        scale: scale,
                                      ))
                                ],
                              );
                            }
                            else {
                              return Center(
                                  child: NFTModelCard(
                                    name: hypebeastCardList[index].name,
                                    image: hypebeastCardList[index].image,
                                    price: hypebeastCardList[index].price,
                                    onlyImage: false,
                                    scale: scale,
                                  ));
                            }
                          },

                        ),],
                ),
              ),
            ],
          ),
          Container(
            width: 162,
            height: 84,
            margin: EdgeInsets.only(bottom: 20),
            child: FilledButton(
                onPressed: () {
                  context.goNamed('/');
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color(0xff303841))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/icons/menu_dots.png'),
                    Text(
                      'Menu',
                      style:
                      plusJakartaSansBoldStyle.copyWith(
                          fontSize: 18),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final topStatusBarHeight = MediaQuery.of(context).viewPadding.top;
//     final bottomStatusBarHeight = MediaQuery.of(context).viewPadding.bottom;
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//
//     final double scale = width / mockUpWidth;
//     final double bigTextScaleFactor = scale * 2.5;
//     final double mediumTextScaleFactor = scale * 1.7;
//     final double smallTextScaleFactor = scale * 1;
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: height * 0.36,
//             child: Stack(
//               children: [
//                 Container(
//                   height: height * 0.36,
//                   child: Image.asset(
//                     'assets/nft/hypebeast_bg_home_page.png',
//                     fit: BoxFit.cover,
//                     alignment: const Alignment(0.8, 0.0),
//                   ),
//                 ),
//                 Positioned(
//                   right: 25,
//                   top: 45,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Container(
//                         height: 85,
//                         child: Stack(
//                           alignment: Alignment.centerRight,
//                           children: [
//                             Text(
//                               'Hypebeast',
//                               textAlign: TextAlign.center,
//                               style: atypDisplayStyle.copyWith(fontSize: 44),
//                             ),
//                             Positioned(
//                               bottom: 1,
//                               child: Row(
//                                 children: [
//                                   RichText(
//                                     textAlign: TextAlign.center,
//                                     text: TextSpan(children: [
//                                       TextSpan(
//                                         text: 'By ',
//                                         style: plusJakartaSansRegularStyle
//                                             .copyWith(fontSize: 16),
//                                       ),
//                                       TextSpan(
//                                         text: 'Matt Sypien ',
//                                         style: plusJakartaSansBoldStyle
//                                             .copyWith(fontSize: 16),
//                                       ),
//                                     ]),
//                                   ),
//                                   Image.asset(
//                                     'assets/icons/verified_white.png',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             height: 132,
//                             width: 97,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Colors.white,
//                                     offset: Offset(0.0, 1.0))
//                               ],
//                               borderRadius: BorderRadius.circular(25),
//                               color: Color(0xffF4B7A8),
//                             ),
//                             child: Container(
//                               margin: EdgeInsets.only(left: 15),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 34,
//                                     width: 34,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(8),
//                                       color: Colors.white.withOpacity(0.3),
//                                     ),
//                                     child: Image.asset(
//                                         'assets/nft_icon/etherium.png'),
//                                   ),
//                                   Text(
//                                     '0.53',
//                                     style: plusJakartaSansBoldStyle.copyWith(
//                                         fontSize: 27),
//                                   ),
//                                   Text(
//                                     'Floor Price',
//                                     style: plusJakartaSansRegularStyle.copyWith(
//                                         fontSize: 11),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 8,
//                           ),
//                           Column(
//                             children: [
//                               Container(
//                                 height: 86,
//                                 width: 97,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                       width: 0.5, color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25),
//                                   color: Colors.white.withOpacity(0.3),
//                                 ),
//                                 child: Container(
//                                   margin: EdgeInsets.only(left: 15),
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         '5.6k',
//                                         style: plusJakartaSansBoldStyle
//                                             .copyWith(fontSize: 27),
//                                       ),
//                                       Text(
//                                         'Owners',
//                                         style: plusJakartaSansRegularStyle
//                                             .copyWith(fontSize: 11),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 8,
//                               ),
//                               Container(
//                                 height: 86,
//                                 width: 97,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                       width: 0.5, color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25),
//                                   color: Colors.white,
//                                 ),
//                                 child: Container(
//                                   margin: EdgeInsets.only(left: 15),
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         '9.9k',
//                                         style:
//                                             plusJakartaSansBoldStyle.copyWith(
//                                                 color: Colors.black,
//                                                 fontSize: 27),
//                                       ),
//                                       Text(
//                                         'Owners',
//                                         style: plusJakartaSansRegularStyle
//                                             .copyWith(
//                                                 color: Colors.grey,
//                                                 fontSize: 11),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             height: height * 0.64,
//             child: MasonryGridView.count(
//               padding: EdgeInsets.all(20),
//               itemCount: hypebeastCardList.length,
//               crossAxisCount: 2,
//               itemBuilder: (_, index) {
//                 if(index == 1) {
//                   return Column(
//                     children: [
//                       Container(
//                                     width: 185,
//                                     height: 67,
//                                     color: Colors.blue,
//                                     ),
//                       Center(
//                           child: NFTModelCard(
//                             name: hypebeastCardList[index].name,
//                             image: hypebeastCardList[index].image,
//                             price: hypebeastCardList[index].price,
//                             onlyImage: false,
//                           ))
//                     ],
//                   );
//                 }
//                 else {
//                   return Center(
//                       child: NFTModelCard(
//                         name: hypebeastCardList[index].name,
//                         image: hypebeastCardList[index].image,
//                         price: hypebeastCardList[index].price,
//                         onlyImage: false,
//                       ));
//                 }
//                   }
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// GridView.custom(
// gridDelegate: SliverQuiltedGridDelegate(
// crossAxisCount: 4,
// mainAxisSpacing: 4,
// crossAxisSpacing: 4,
// repeatPattern: QuiltedGridRepeatPattern.mirrored,
// pattern: [
// QuiltedGridTile(2, 2),
// QuiltedGridTile(1, 2),
// ],
// ),
// childrenDelegate: SliverChildBuilderDelegate(
// (context, index) => Container(
// color: Colors.blue,
// child: Text(index.toString()),),
// ),
// )




// Row(
// children: [
// Container(
// width: width / 2,
// child: ListView.builder(
// padding: EdgeInsets.all(20),
// itemBuilder: (_, index) =Center(
// // child: NFTModelCard(name: hypebeastCardList[index].name, image: hypebeastCardList[index].image, price:  hypebeastCardList[index].price, onlyImage: false,)),>
// itemCount: hypebeastCardList.length,
// clipBehavior: Clip.hardEdge,
// ),
// ),
// Container(
// clipBehavior: Clip.none,
// width: width / 2,
// child: SingleChildScrollView(
// child: Column(
// children: [
// SizedBox(height: 20,),
// Container(
// width: 185,
// height: 67,
// color: Colors.blue,
// ),
// ListView.builder(
// padding: EdgeInsets.all(20),
// physics: NeverScrollableScrollPhysics(),
// shrinkWrap: true,
// itemBuilder: (_, index) {
// return Center(child: NFTModelCard(name: hypebeastCardList[
// index].name,
// image: hypebeastCardList[index].image,
// price: hypebeastCardList[index].price,
// onlyImage: false,));},
// itemCount: hypebeastCardList.length,
// clipBehavior: Clip.hardEdge,
// ),
// ],
// ),
// ),
// ),
// ],
// ),

// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// TransformableCarouselSlider(
// isReverse: false,
// listOfNFTCards: animeCardList,
// autoPlayAnimationDuration: const Duration(seconds: 2),
// autoPlayInterval: const Duration(milliseconds: 2000),
// isTransformed: false,
// scrollAxisDirection: Axis.vertical,
// autoPlay: false,
// ),
// TransformableCarouselSlider(
// isReverse: false,
// listOfNFTCards: animeCardList,
// autoPlayAnimationDuration: const Duration(seconds: 2),
// autoPlayInterval: const Duration(milliseconds: 2000),
// isTransformed: false,
// scrollAxisDirection: Axis.vertical,
// autoPlay: false,
// ),
// ],
// ),
