import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/core/widget/drawer_widget.dart';
import 'package:twitter_by_ncl/presentation/home_page/widget/home_following/home_following_sections.dart';
import 'package:twitter_by_ncl/presentation/home_page/widget/home_for_you/home_for_you_sections.dart';
import 'package:twitter_by_ncl/presentation/home_page/widget/home_icon.dart';
import 'package:twitter_by_ncl/core/widget/profile_avatar.dart';

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
      drawer: const DrawerWidget(),
      key: _key,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: GestureDetector(
                onTap: () => _key.currentState?.openDrawer(),
                child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: const ProfileAvatar()),
              ),
              title: const HomeIcon(),
              centerTitle: true,
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: const <Tab>[
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
          children: const <Widget>[
            HomeForYouSections(),
            HomeFollowingSections(),
          ],
        ),
      ),
    );
  }
}
