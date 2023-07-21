import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/core/widget/drawer_widget.dart';
import 'package:twitter_by_ncl/presentation/home_page/widget/home_following/home_following_sections.dart';
import 'package:twitter_by_ncl/presentation/home_page/widget/home_for_you/home_for_you_sections.dart';
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
      drawer: DrawerWidget(),
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
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
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
            HomeFollowingSections(),
            HomeForYouSections(),
          ],
        ),
      ),
    );
  }
}
