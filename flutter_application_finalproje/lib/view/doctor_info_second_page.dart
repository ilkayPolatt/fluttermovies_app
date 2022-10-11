import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/api/api_text_field.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';
import 'dart:io';

class DoctorInfoSecondPage extends StatefulWidget {
  const DoctorInfoSecondPage({super.key});

  @override
  State<DoctorInfoSecondPage> createState() => _DoctorInfoSecondPageState();
}

class _DoctorInfoSecondPageState extends State<DoctorInfoSecondPage> {
  TextEditingController _textTitleController = TextEditingController();
  TextEditingController _textBodyController = TextEditingController();
  TextEditingController _textIdController = TextEditingController();

  late final er_dio;

  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  bool _isLoading = false;

  void _isLoadingCheck() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> insertApi(PostTextField data) async {
    _isLoadingCheck();
    final response = await er_dio.post('posts', data: data);
    if (response.statusCode == HttpStatus.created) {
      print('Kayıt Tamamlandı!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorWhite,
      body: Padding(
        padding: DoctorConst.paddingTop60RightLeft8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _rowIconLeft(),
            _rowTextTitle(context),
            _textExplantion(),
            _textFieldPerson(),
            _textFieldEmail(),
            _textFieldPhone(),
            _textFieldPssword(),
            _textFieldConfirmPassword(),
            ElevatedButton(
                onPressed: () {}, child: Text(DoctorConst.textCreate)),
            _rowAccountLogin(context),
            DoctorConst.sizedBoxHeigt20
          ],
        ),
      ),
    );
  }

  Row _rowAccountLogin(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            DoctorConst.textAlreadyHaveAccount,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: DoctorConst.colorBlack, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              DoctorConst.textLoginHere,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: DoctorConst.colorBlue, fontWeight: FontWeight.w600),
            ))
      ],
    );
  }

  TextField _textFieldConfirmPassword() {
    return TextField(
      controller: _textBodyController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_open_rounded),
        labelText: DoctorConst.textConfirmPassword,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 20,
    );
  }

  TextField _textFieldPssword() {
    return TextField(
      controller: _textTitleController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_open_rounded),
        labelText: DoctorConst.textPassword,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 20,
    );
  }

  TextField _textFieldPhone() {
    return TextField(
      controller: _textIdController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone_android_sharp),
        labelText: DoctorConst.textPhone,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 11,
      keyboardType: TextInputType.number,
    );
  }

  TextField _textFieldEmail() {
    return TextField(
      controller: _textBodyController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        labelText: DoctorConst.textEmail,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 20,
      keyboardType: TextInputType.text,
    );
  }

  TextField _textFieldPerson() {
    return TextField(
      controller: _textTitleController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person_outline_outlined),
        labelText: DoctorConst.textJhoneWilliams,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      keyboardType: TextInputType.text,
      maxLength: 20,
    );
  }

  Row _rowIconLeft() {
    return Row(
      children: [
        _iconLeft(),
      ],
    );
  }

  Row _rowTextTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _textTitleStarted(context),
      ],
    );
  }

  Text _textExplantion() {
    return Text(
      DoctorConst.textRegistrationPageExplantion,
      style: TextStyle(fontSize: 16),
    );
  }

  Text _textTitleStarted(BuildContext context) {
    return Text(
      DoctorConst.textLetsGetStarted,
      style: Theme.of(context).textTheme.headline4?.copyWith(
          color: DoctorConst.colorBlack, fontWeight: FontWeight.w600),
    );
  }

  IconButton _iconLeft() {
    return IconButton(
      iconSize: 45,
      icon: const Icon(Icons.arrow_left),
      color: Colors.black,
      onPressed: () {},
    );
  }
}
