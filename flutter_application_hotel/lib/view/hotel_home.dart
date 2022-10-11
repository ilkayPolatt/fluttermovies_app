import 'package:flutter/material.dart';
import 'package:flutter_application_hotel/const/hotel_const.dart';

class HotelHome extends StatelessWidget {
  const HotelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, bottom: 28, right: 8, top: 65),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _rowAppbar(context),
              HotelConst.sizedBoxHeigt15,
              Text(
                HotelConst.home_title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: HotelConst.color_black),
              ),
              HotelConst.sizedBoxHeigt30,
              _rowTextFieldIcon(context),
              HotelConst.sizedBoxHeigt30,
              _RowTitleText(context),
              HotelConst.sizedBoxHeigt15,
              _singleChildScrollView(),
              HotelConst.sizedBoxHeigt15,
              _TitleTextSeeAll(context),
              HotelConst.sizedBoxHeigt15,
              _cardOne(context),
              _cardTwo(context),
              _cardThree(context),
              _cardFour(context),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _singleChildScrollView() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          RowCardDesing(
            image: HotelConst.image_one,
            rowTitle: HotelConst.home_row_hotel_name,
            columTitle: HotelConst.home_row_hotel_location,
          ),
          HotelConst.sizedBoxWidht10,
          RowCardDesing(
            image: HotelConst.image_two,
            rowTitle: HotelConst.home_row_hotel_name,
            columTitle: HotelConst.home_row_hotel_location,
          ),
          HotelConst.sizedBoxWidht10,
          RowCardDesing(
            image: HotelConst.image_three,
            rowTitle: HotelConst.home_row_hotel_name,
            columTitle: HotelConst.home_row_hotel_location,
          ),
          HotelConst.sizedBoxWidht10,
          RowCardDesing(
            image: HotelConst.image_four,
            rowTitle: HotelConst.home_row_hotel_name,
            columTitle: HotelConst.home_row_hotel_location,
          ),
        ],
      ),
    );
  }

  Card _cardFour(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: HotelConst.borderRadiusCircular10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: HotelConst.radius10,
                  topRight: HotelConst.radius10,
                ),
                child: Image.asset(
                  HotelConst.image_four,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding: HotelConst.paddingGeneral12,
                child: _cardColumnText(context),
              )),
        ],
      ),
    );
  }

  Card _cardThree(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: HotelConst.borderRadiusCircular10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: HotelConst.radius10,
                  topRight: HotelConst.radius10,
                ),
                child: Image.asset(
                  HotelConst.image_three,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding: HotelConst.paddingGeneral12,
                child: _cardColumnText(context),
              )),
        ],
      ),
    );
  }

  Card _cardTwo(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: HotelConst.borderRadiusCircular10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: HotelConst.radius10,
                  topRight: HotelConst.radius10,
                ),
                child: Image.asset(
                  HotelConst.image_two,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding: HotelConst.paddingGeneral12,
                child: _cardColumnText(context),
              )),
        ],
      ),
    );
  }

  Card _cardOne(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: HotelConst.borderRadiusCircular10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: HotelConst.radius10,
                  topRight: HotelConst.radius10,
                ),
                child: Image.asset(
                  HotelConst.image_one,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding: HotelConst.paddingGeneral12,
                child: _cardColumnText(context),
              )),
        ],
      ),
    );
  }

  Column _cardColumnText(BuildContext context) {
    return Column(
      children: [
        _cardRightTextIcon(),
        HotelConst.sizedBoxHeigt5,
        _cardRightLocationText(context),
        HotelConst.sizedBoxHeigt5,
        _cardRigthStarText(context),
        HotelConst.sizedBoxHeigt15,
        _cardRightPriceText(context),
      ],
    );
  }

  Row _cardRightPriceText(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              HotelConst.home_column_card_price_title,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: HotelConst.color_blue,
                  ),
            ),
            Text(
              HotelConst.home_column_card_price_context,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: HotelConst.color_grey),
            ),
          ],
        ),
      ],
    );
  }

  Row _cardRigthStarText(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: HotelConst.color_amber,
              size: 16,
            ),
            HotelConst.sizedBoxWidht5,
            Text(
              HotelConst.home_column_card_star_title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: HotelConst.color_grey),
            ),
          ],
        ),
      ],
    );
  }

  Row _cardRightLocationText(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_outlined,
          color: HotelConst.color_black,
          size: 16,
        ),
        HotelConst.sizedBoxWidht5,
        Text(
          HotelConst.home_column_card_location,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: HotelConst.color_grey),
        ),
      ],
    );
  }

  Row _cardRightTextIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(HotelConst.home_column_card_title),
        Icon(
          Icons.emoji_flags,
          color: HotelConst.color_blue,
        )
      ],
    );
  }

  Row _TitleTextSeeAll(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _TextSeeall(context),
      ],
    );
  }

  Row _RowTitleText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _TextSeeall(context),
      ],
    );
  }

  Text _TextSeeall(BuildContext context) {
    return Text(
      HotelConst.home_seeall,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: HotelConst.color_grey),
    );
  }

  Row _rowTextFieldIcon(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 8,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: HotelConst.home_textfield,
            ),
          ),
        ),
        HotelConst.sizedBoxWidht10,
        Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: HotelConst.color_blue,
                  borderRadius: HotelConst.borderRadiusCircular10),
              height: MediaQuery.of(context).size.height / 18,
              child: const Icon(Icons.manage_search_rounded,
                  color: HotelConst.color_white),
            ))
      ],
    );
  }

  Row _rowAppbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Image.asset(HotelConst.image_user),
            ),
            HotelConst.sizedBoxWidht10,
            Text(HotelConst.home_user_title),
          ],
        ),
        CircleAvatar(
          backgroundColor: HotelConst.color_grey,
          child: Icon(Icons.notifications),
        )
      ],
    );
  }

  Row _rowUserImageTitle(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.asset(HotelConst.image_user),
        ),
      ],
    );
  }
}

class RowClipRRectImage extends StatelessWidget {
  const RowClipRRectImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: HotelConst.borderRadiusCircular10,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 3.7,
        width: MediaQuery.of(context).size.width / 1.2,
      ),
    );
  }
}

class RowCardDesing extends StatelessWidget {
  const RowCardDesing(
      {Key? key,
      required this.image,
      required this.rowTitle,
      required this.columTitle})
      : super(key: key);
  final String image;
  final String rowTitle;
  final String columTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RowClipRRectImage(image: image),
        const RowPositionFlag(),
        RowPositionText(text: rowTitle),
        RowPositinedLocationText(text: columTitle),
      ],
    );
  }
}

class RowPositinedLocationText extends StatelessWidget {
  const RowPositinedLocationText({Key? key, required this.text})
      : super(key: key);
  final double posinedRightLocationTextRow = 150;
  final double posinedBottomLocationTextRow = 10;

  final String text;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: posinedRightLocationTextRow,
      bottom: posinedBottomLocationTextRow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: HotelConst.color_grey,
          ),
          HotelConst.sizedBoxWidht5,
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: HotelConst.color_grey),
          ),
        ],
      ),
    );
  }
}

class RowPositionText extends StatelessWidget {
  const RowPositionText({Key? key, required this.text}) : super(key: key);
  final String text;

  final double _posinedRightTextRow = 120;
  final double _posinedBottomTextRow = 40;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: _posinedBottomTextRow,
        right: _posinedRightTextRow,
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: HotelConst.color_white),
        ));
  }
}

class RowPositionFlag extends StatelessWidget {
  const RowPositionFlag({
    Key? key,
  }) : super(key: key);
  final double _sizeIconRow = 35.0;
  final double _posinedLeftFlagRow = 280;
  final double _posinedBottomFlagRow = 170;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _posinedLeftFlagRow,
      bottom: _posinedBottomFlagRow,
      child: Icon(
        Icons.flag_outlined,
        color: HotelConst.color_white,
        size: _sizeIconRow,
      ),
    );
  }
}
