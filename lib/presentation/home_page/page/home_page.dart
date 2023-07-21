import 'package:flutter/material.dart';
import 'package:twitter_by_ncl/presentation/home_page/widget/home_icon.dart';
import 'package:twitter_by_ncl/presentation/home_page/widget/home_profile_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      key: _key,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: InkWell(
                onTap: () => _key.currentState?.openDrawer(),
                child: HomeProfileAvatar(),
              ),
              title: HomeIcon(),
              centerTitle: true,
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                tabs: <Tab>[
                  Tab(text: 'For you'),
                  Tab(text: 'Following'),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text('data'),
            Text('data')
            // StatisticsPage(),
            // HistoryPage(),
          ],
        ),
      ),
    );
  }
}
