import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/core/widget/profile_avatar.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileAvatar(),
        SizedBox(height: 8.h),
        _buildUsername(context),
        SizedBox(height: 8.h),
        _buildTweet(context),
      ],
    );
  }

  Widget _buildUsername(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Recent Tweet from ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextSpan(
            text: 'Username',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildTweet(BuildContext context) {
    return Text(
      'Tweet di sini yaaa',
      style:
          Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
    );
  }
}
