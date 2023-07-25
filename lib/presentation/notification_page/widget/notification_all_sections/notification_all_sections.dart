import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/presentation/notification_page/widget/notification_all_sections/notification_widget.dart';

class NotificationAllSections extends StatelessWidget {
  const NotificationAllSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: const NotificationWidget(),
        );
      },
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.withOpacity(0.5),
        // height: 30.h,
      ),
      itemCount: 10,
    );
  }
}
