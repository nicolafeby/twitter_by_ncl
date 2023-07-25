import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/core/widget/profile_avatar.dart';

class NotificationAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalKey;
  final TabController tabController;
  const NotificationAppbar({
    super.key,
    required this.globalKey,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: const Icon(Icons.settings)),
      ],
      title: Text(
        'Notifications',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
      leading: InkWell(
        onTap: globalKey.currentState?.openDrawer,
        child: const ProfileAvatar(),
      ),
      bottom: TabBar(
        indicatorColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        tabs: const <Tab>[
          Tab(text: 'All'),
          Tab(text: 'Verified'),
          Tab(text: 'Mentions'),
        ],
        controller: tabController,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}
