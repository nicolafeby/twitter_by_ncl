import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_by_ncl/core/widget/profile_avatar.dart';

class SearchAppbar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalKey;
  const SearchAppbar({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: AppBar(
        leadingWidth: 34.w,
        centerTitle: true,
        title: GestureDetector(
          onTap: () {
            //TODO: OPEN SEARCH PAGE
          },
          child: Container(
            width: double.infinity,
            height: 30.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 12.r,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Search Twitter',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(height: 0.0),
                )
              ],
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () => globalKey.currentState?.openDrawer(),
          child: const ProfileAvatar(),
        ),
        actions: const [Icon(Icons.settings)],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
