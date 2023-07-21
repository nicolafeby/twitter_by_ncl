import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/core/widget/tweet_widget.dart';

class HomeForYouSections extends StatelessWidget {
  const HomeForYouSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      itemBuilder: (context, index) {
        return const TweetWidget();
      },
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.withOpacity(0.5),
        height: 30.h,
      ),
      itemCount: 10,
    );
  }
}
