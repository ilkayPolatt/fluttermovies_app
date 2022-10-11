import 'package:flutter/material.dart';
import 'package:flutter_application_5/const/movie_const.dart';
import 'package:flutter_application_5/view/movie_home.dart';

class MoviesDetail extends StatelessWidget {
  const MoviesDetail({super.key});

  final double flexi = 4.5;
  final double flex = 5.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MovieConst.colordark,
        body: Column(
          children: [
            Expanded(
                flex: flexi.toInt(),
                child: Stack(
                  children: [
                    _Image(context),
                    _backLeftIcon(context),
                    _positionedRowContainer(context),
                  ],
                )),
            Expanded(
              flex: flex.toInt(),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _rowHeadText(context),
                    _rowTextHindi(context),
                    MovieConst.sizedBoxHeigt10,
                    _textYear(context),
                    MovieConst.sizedBoxHeigt10,
                    _rowContainerTextIcon(),
                    MovieConst.sizedBoxHeigt10,
                    textStoryActor(text: MovieConst.detailStoryLine),
                    MovieConst.sizedBoxHeigt10,
                    _textDetailExplantion(context),
                    MovieConst.sizedBoxHeigt15,
                    textStoryActor(
                      text: MovieConst.detailActor,
                    ),
                    MovieConst.sizedBoxHeigt15,
                    _CliprRectImage(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Text _textDetailExplantion(BuildContext context) {
    return Text(
                    MovieConst.detailExplantion,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: MovieConst.colorwhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                  );
  }

  Row _CliprRectImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        cliprRectImage(image: MovieConst.imageActorYash),
        cliprRectImage(image: MovieConst.imageActorMonu),
        cliprRectImage(image: MovieConst.imageActorYash),
        cliprRectImage(image: MovieConst.imageActorMonu),
      ],
    );
  }

  Row _rowContainerTextIcon() {
    return Row(
      children: [
        elevatedButtonShareTextIcon(
            text: MovieConst.detailLike, icon: Icons.back_hand_rounded),
        MovieConst.sizedBoxWidht10,
        elevatedButtonShareTextIcon(
            text: MovieConst.detailContainerComment,
            icon: Icons.message_outlined),
        MovieConst.sizedBoxWidht10,
        elevatedButtonShareTextIcon(
          text: MovieConst.detailShare,
          icon: Icons.share,
        ),
      ],
    );
  }

  Text _textYear(BuildContext context) {
    return Text(MovieConst.infoCalendar,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: MovieConst.colorwhite,
            ));
  }

  Row _rowTextHindi(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(MovieConst.detailHindiDubbing,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: MovieConst.colorwhite, fontWeight: FontWeight.w500)),
        Text(MovieConst.detailPointView,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: MovieConst.colorwhite,
                )),
      ],
    );
  }

  Row _rowHeadText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(MovieConst.detailKgfChapter,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: MovieConst.colorwhite, fontWeight: FontWeight.w500)),
        Row(
          children: [
            Icon(
              Icons.star,
              color: MovieConst.coloramber,
              size: 18,
            ),
            Text(MovieConst.score4_9,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: MovieConst.colorwhite,
                    )),
          ],
        )
      ],
    );
  }

  Positioned _positionedRowContainer(BuildContext context) {
    return Positioned(
        left: 20,
        bottom: 80,
        child: Row(
          children: [
            _containerIconTextWatchNow(context),
            MovieConst.sizedBoxHeigt10,
            _containerWhiteTextAdd(context),
          ],
        ));
  }

  Container _containerWhiteTextAdd(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 2.1,
      decoration: BoxDecoration(
        borderRadius: MovieConst.borderRadiusCircular10,
        color: MovieConst.colorwhite,
      ),
      child: Center(
        child: TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_outline_rounded,
            color: MovieConst.colororange,
            size: 25,
          ),
          label: Text(
            MovieConst.detailLike,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: MovieConst.colororange,
                ),
          ),
        ),
      ),
    );
  }

  Container _containerIconTextWatchNow(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
        borderRadius: MovieConst.borderRadiusCircular10,
        color: MovieConst.colororange,
      ),
      child: Center(
        child: TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.play_circle_outlined,
            color: MovieConst.colorwhite,
            size: 25,
          ),
          label: Text(
            MovieConst.infoWatch,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: MovieConst.colorwhite,
                ),
          ),
        ),
      ),
    );
  }

  Positioned _backLeftIcon(BuildContext context) {
    return Positioned(
        left: 20,
        top: 60,
        child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MovieHome(),
              ));
            },
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              color: MovieConst.colorwhite,
              size: 35,
            )));
  }

  Image _Image(BuildContext context) {
    return Image.asset(
      MovieConst.imageKgf,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
    );
  }
}

class cliprRectImage extends StatelessWidget {
  const cliprRectImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MovieConst.borderRadiusCircular20,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width / 4.75,
        height: MediaQuery.of(context).size.height / 8.5,
      ),
    );
  }
}

class textStoryActor extends StatelessWidget {
  const textStoryActor({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: MovieConst.colorwhite, fontWeight: FontWeight.w500),
    );
  }
}

class elevatedButtonShareTextIcon extends StatelessWidget {
  const elevatedButtonShareTextIcon({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MovieConst.borderRadiusCircular10,
      child: ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: MovieConst.colorwhite,
                    ),
              ),
              MovieConst.sizedBoxHeigt10,
              Icon(
                icon,
                color: MovieConst.colorwhite,
                size: 19,
              )
            ],
          )),
    );
  }
}
