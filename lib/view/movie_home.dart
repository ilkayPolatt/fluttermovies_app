import 'package:flutter/material.dart';
import 'package:flutter_application_5/const/movie_const.dart';
import 'package:flutter_application_5/core/card.home.dart';
import 'package:flutter_application_5/core/card_Home_Vertical.dart';
import 'package:flutter_application_5/core/card_Info.dart';

class MovieHome extends StatefulWidget {
  const MovieHome({super.key});

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> with TickerProviderStateMixin {
  late final TabController _TabController;

  final double fontSize15 = 15;
  final double containerWidth2_2 = 2.2;
  final double containerHeight3_8 = 3.8;
  static List<Tab> _tabBarList = [
    Tab(child: Text(MovieConst.homeAction)),
    Tab(child: Text(MovieConst.homeHorror)),
    Tab(child: Text(MovieConst.homeDrama)),
    Tab(child: Text(MovieConst.homeComedy)),
    Tab(child: Text(MovieConst.homeRomanticComedi)),
    Tab(child: Text(MovieConst.homemusical)),
  ];
  static List<Widget> _tabbarView = [
    Column(
      children: [],
    ),
    MovieHome(),
    Center(child: Text('Üçüncü Tab')),
    Center(child: Text('Dördüncü Tab')),
    Center(child: Text('Beşinçi Tab')),
    Center(child: Container(color: Colors.orange)),
  ];
  @override
  void initState() {
    super.initState();
    _TabController = TabController(length: _tabBarList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBarList.length,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.shopping_cart_outlined),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.support_agent_outlined), label: ''),
          ],
        ),
        backgroundColor: MovieConst.colordark,
        appBar: _appBarTextIcon(context),
        body: Padding(
          padding: MovieConst.paddingAll10,
          child: Column(children: [
            _textFieldSearch(),
            Padding(padding: MovieConst.paddingtop10),
            _tabbarCategori(),
            Padding(padding: MovieConst.paddingtop10),
            _rowHollywoodSeeMore(context),
            Padding(padding: MovieConst.paddingtop10),
            _enderGameWarboxImagesRow(),
            MovieConst.sizedBoxHeigt20,
            _rowBollywoodSeeMore(context),
            MovieConst.sizedBoxHeigt20,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardHomeVertical(
                      image: MovieConst.imageKgf,
                      textTitle: MovieConst.textKgf,
                      textStar: MovieConst.homeRadhe,
                      textScore: MovieConst.score4_9),
                  MovieConst.sizedBoxWidht20,
                  CardHomeVertical(
                      image: MovieConst.imageAction,
                      textTitle: MovieConst.homeAction,
                      textStar: MovieConst.homeRadhe,
                      textScore: MovieConst.score4_9),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Row _rowBollywoodSeeMore(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _textBollywood(context),
        _textSeeMore(context),
      ],
    );
  }

  SingleChildScrollView _enderGameWarboxImagesRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: _rowCardImage(),
    );
  }

  Row _rowHollywoodSeeMore(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _textHollywood(context),
      _textSeeMore(context),
    ]);
  }

  TabBar _tabbarCategori() {
    return TabBar(
      tabs: _tabBarList,
      controller: _TabController,
      unselectedLabelColor: MovieConst.colorgrey,
      labelColor: MovieConst.colorwhite,
      isScrollable: true,
      labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize15),
      indicator: BoxDecoration(
          borderRadius: MovieConst.borderRadiusCircular10,
          color: MovieConst.colororange),
    );
  }

  Text _textBollywood(BuildContext context) {
    return Text(MovieConst.homeBollywood,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: MovieConst.colorwhite));
  }

  Row _rowCardImage() {
    return Row(
      children: [
        CardHome(
            image: MovieConst.imageEnder,
            text: MovieConst.homeEnders,
            textone: MovieConst.homeYear,
            textScore: MovieConst.detailPoint),
        MovieConst.sizedBoxWidht5,
        CardHome(
            image: MovieConst.imageAction,
            text: MovieConst.homeWar,
            textone: MovieConst.homeYear,
            textScore: MovieConst.detailPoint)
      ],
    );
  }

  Text _textSeeMore(BuildContext context) {
    return Text(
      MovieConst.homeSee,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: MovieConst.colororange, fontSize: fontSize15),
    );
  }

  Text _textHollywood(BuildContext context) {
    return Text(MovieConst.homeHollywood,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: MovieConst.colorwhite));
  }

  TextField _textFieldSearch() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: MovieConst.borderRadiusCircular20),
          prefixIcon: Icon(
            Icons.search,
            color: MovieConst.colorgrey,
          ),
          label: Text(
            MovieConst.homeSearch,
            style: TextStyle(color: MovieConst.colorgrey),
          ),
          hintText: MovieConst.homeSearch),
    );
  }

  AppBar _appBarTextIcon(BuildContext context) {
    return AppBar(
      backgroundColor: MovieConst.colordark,
      actions: <Widget>[Container()],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: MovieConst.colorgrey,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(MovieConst.appBarTitleBenge,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: MovieConst.colororange,
                      fontWeight: FontWeight.w700)),
              Text(MovieConst.appBarTitleMovie,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: MovieConst.colordarkblue,
                      fontWeight: FontWeight.w700)),
            ],
          ),
          CircleAvatar(
            maxRadius: 20,
            backgroundColor: MovieConst.colorgrey,
            child: Image.asset(MovieConst.imageMovieUser),
          )
        ],
      ),
    );
  }
}
