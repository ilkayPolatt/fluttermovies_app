import 'package:flutter/material.dart';
import 'package:flutter_application_5/const/movie_const.dart';

class CardHome extends StatelessWidget {
  const CardHome(
      {super.key,
      required this.image,
      required this.text,
      required this.textone,
      required this.textScore});
  final String image;
  final String text;
  final String textone;
  final String textScore;
  final double height4 = 4;
  final double widtht1_1 = 1.1;
  final double fontSize15 = 15;
  final double fontSize18 = 18;
  final double fontSize25 = 25;
  final double posinedRightLocationTextRow = 180;
  final double posinedBottomLocationTextRow = 95;
  final double PositionedRight10 = 10;
  final double PositionedBottom15 = 15;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MovieConst.borderRadiusCircular20,
      child: Stack(children: [
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height / height4,
          width: MediaQuery.of(context).size.width / widtht1_1,
          fit: BoxFit.cover,
        ),
        Positioned(
          right: posinedRightLocationTextRow,
          top: posinedBottomLocationTextRow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: MovieConst.colorwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize25),
              ),
              MovieConst.sizedBoxHeigt10,
              Text(
                textone,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: MovieConst.colorwhite, fontSize: fontSize15),
              ),
              MovieConst.sizedBoxHeigt10,
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
          right: PositionedRight10,
          bottom: PositionedBottom15,
          child: CircleAvatar(
              child:
                  Icon(Icons.play_circle_outline, color: MovieConst.colorwhite),
              backgroundColor: MovieConst.colororange),
        )
      ]),
    );
  }
}
