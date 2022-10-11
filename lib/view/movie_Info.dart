import 'package:flutter/material.dart';
import 'package:flutter_application_5/const/movie_const.dart';
import 'package:flutter_application_5/core/card_Info.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MovieConst.colorblack,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _appBarRow(context),
                Padding(padding: MovieConst.paddingt20),
                _cardMovieDeadpool(),
                Padding(padding: MovieConst.paddingtop10),
                _cardMovieMaleficent(),
                Padding(padding: MovieConst.paddingtop10),
                _cardMovieWonderWoman(),
                Padding(padding: MovieConst.paddingtop10),
                _cardMovieDeadpool(),
              ],
            ),
          )),
    );
  }

  CardInfo _cardMovieWonderWoman() {
    return CardInfo(
        image: MovieConst.imageWoman,
        text: MovieConst.infoWoman,
        textone: MovieConst.homeYear,
        texttwo: MovieConst.detailPoint);
  }

  CardInfo _cardMovieMaleficent() {
    return CardInfo(
        image: MovieConst.imageMalefiz,
        text: MovieConst.infoMaleficent,
        textone: MovieConst.homeYear,
        texttwo: MovieConst.detailPoint);
  }

  CardInfo _cardMovieDeadpool() {
    return CardInfo(
      image: MovieConst.imageDeadpol,
      text: MovieConst.infoDeadpool,
      textone: MovieConst.homeYear,
      texttwo: MovieConst.DeadpoolScoring,
    );
  }

  Row _appBarRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_rounded,
            color: MovieConst.colorwhite,
          )),
      MovieConst.sizedBoxWidht80,
      Text(
        MovieConst.infoWatch,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: MovieConst.colorwhite, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
