import 'package:flutter/material.dart';

class tabBarLearnView extends StatefulWidget {
  const tabBarLearnView({super.key});

  @override
  State<tabBarLearnView> createState() => _tabBarLearnViewState();
}

class _tabBarLearnViewState extends State<tabBarLearnView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  static List<Tab> _TabBar = [
    Tab(
      child: Text('birinci'),
    ),
    Tab(
      child: Text('ikinci'),
    ),
    Tab(
      child: Text('ücüncü'),
    ),
  ];

  static List<Widget> _tabbarwiew = [
    Column(
      children: [],
    ),
    Center(
      child: Text('dsgsfds'),
    ),
    Center(
      child: Text('dmlksd'),
    ),
  ];

  @override
  void initstate() {
    super.initState();
    _tabController = TabController(length: _TabBar.length, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TabBar(
            tabs: _tabbarwiew,
            controller: _tabController,
            unselectedLabelColor: Colors.grey,
            physics: ScrollPhysics(),
            isScrollable: true,
            labelStyle: TextStyle(color: Colors.green),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: TabBarView(
              children: _tabbarwiew,
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}
