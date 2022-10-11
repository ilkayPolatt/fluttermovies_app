import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';

class DoctorInfoFirstPage extends StatelessWidget {
  const DoctorInfoFirstPage({super.key});
  final double fontSize45 = 45;
  final double fontSize18 = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorWhite,
      body: Padding(
        padding: DoctorConst.paddingTop30RightLeft8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _rowTextSkip(),
            Image.asset(DoctorConst.imageFirsPage),
            _textTitleExplantion(context),
            DoctorConst.sizedBoxHeigt30,
            _rowNext(context)
          ],
        ),
      ),
    );
  }

  Column _textTitleExplantion(BuildContext context) {
    return Column(
      children: [
        _textTitle(context),
        _textExplantion(context),
      ],
    );
  }

  Row _rowNext(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(DoctorConst.textNext,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: DoctorConst.colorBlack)),
        ),
      ],
    );
  }

  Text _textExplantion(BuildContext context) {
    return Text(
      DoctorConst.textFirstPageExplantion,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: DoctorConst.colorBlack, fontSize: fontSize18),
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      DoctorConst.textFirstPageTitle,
      style: Theme.of(context).textTheme.headline4?.copyWith(
          color: DoctorConst.colorBlack,
          fontWeight: FontWeight.w700,
          fontSize: fontSize45),
    );
  }

  Row _rowTextSkip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: () {}, child: Text(DoctorConst.textSkip)),
      ],
    );
  }
}
