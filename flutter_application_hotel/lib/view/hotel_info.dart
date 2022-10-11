import 'package:flutter/material.dart';
import 'package:flutter_application_hotel/const/hotel_const.dart';

import 'hotel_home.dart';

class HotelInfo extends StatelessWidget {
  const HotelInfo({super.key});

  final double _height = 2.7;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        _imageBoxFit(context),
        _infoContainer(height, width, context),
      ]),
    );
  }

  Column _infoContainer(double height, double width, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height / _height,
          width: width,
          decoration: const BoxDecoration(
            color: HotelConst.color_white,
            borderRadius: BorderRadius.only(
              topRight: HotelConst.radius40,
              topLeft: HotelConst.radius40,
            ),
          ),
          child: Padding(
            padding: HotelConst.paddingGeneral20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _textTitle(context),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HotelHome(),
                      ));
                    },
                    child: Text(HotelConst.info_elevatedButton)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      HotelConst.into_title,
      style: Theme.of(context).textTheme.headline3?.copyWith(
          fontWeight: FontWeight.w300, color: HotelConst.color_black),
    );
  }

  Image _imageBoxFit(BuildContext context) {
    return Image.asset(
      HotelConst.image_two,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
    );
  }
}
