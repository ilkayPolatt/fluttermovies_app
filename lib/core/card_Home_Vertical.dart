import 'package:flutter/material.dart';
import 'package:flutter_application_5/const/movie_const.dart';
import 'package:flutter_application_5/view/movie_detail.dart';

class CardHomeVertical extends StatelessWidget {
  const CardHomeVertical(
      {super.key,
      required this.image,
      required this.textTitle,
      required this.textStar,
      required this.textScore});
  final String image;
  final String textTitle;
  final String textStar;
  final String textScore;
  final double height3_7 = 3.7;
  final double width2_3 = 2.3;
  final double fontSize15 = 15;
  final double fontSize18 = 18;
  final double fontSize20 = 20;
  final double left20 = 20;
  final double top150 = 150;
  final double right5 = 5;
  final double bottom15 = 15;
  //final String textthree;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MovieConst.borderRadiusCircular20,
      child: Stack(children: [
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height / height3_7,
          width: MediaQuery.of(context).size.width / width2_3,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: left20,
          top: top150,
          child: Column(
            children: [
              Text(
                textTitle,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: MovieConst.colorwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize20),
              ),
              MovieConst.sizedBoxHeigt5,
              MovieConst.sizedBoxHeigt5,
              Row(
                children: [
                  Icon(Icons.star,
                      color: MovieConst.coloramber, size: fontSize18),
                  MovieConst.sizedBoxWidht5,
                  Text(textScore,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: MovieConst.colorwhite, fontSize: fontSize15)),
                  MovieConst.sizedBoxWidht5,
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: right5,
          bottom: bottom15,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MoviesDetail(),
              ));
            },
            child: CircleAvatar(
                child: Icon(Icons.play_circle_outline,
                    color: MovieConst.colorwhite),
                backgroundColor: MovieConst.colororange),
          ),
        )
      ]),
    );
  }
}
