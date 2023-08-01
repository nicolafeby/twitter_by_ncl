import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/core/widget/drawer_widget.dart';
import 'package:twitter_by_ncl/core/widget/profile_avatar.dart';
import 'package:twitter_by_ncl/presentation/notification_page/widget/notification_all_sections/notification_all_sections.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const DrawerWidget(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              actions: [
                Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: const Icon(Icons.settings)),
              ],
              leading: GestureDetector(
                onTap: () => _key.currentState?.openDrawer(),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: const ProfileAvatar(),
                ),
              ),
              title: Text(
                'Notifications',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
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
                  Tab(text: 'All'),
                  Tab(text: 'Verified'),
                  Tab(text: 'Mentions'),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            NotificationAllSections(),
            Text('verified'),
            Text('mentions'),
          ],
        ),
      ),
      // appBar: NotificationAppbar(
      //   globalKey: _key,
      //   tabController: _tabController,
      // ),
    );
  }
}
