import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TweetWidget extends StatelessWidget {
  const TweetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImageAvatarSections(),
          SizedBox(width: 8.w),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUserNameSections(context),
                _buildTweetSections(context),
                SizedBox(height: 10.h),
                _buildTweetNavigatorSections(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTweetSections(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        //TODO: show lottie
      },
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 4.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: CachedNetworkImage(
              imageUrl:
                  'https://berita.99.co/wp-content/uploads/2023/01/kata-kata-bijak-lucu-bermakna.jpg',
            ),
          )
        ],
      ),
    );
  }

  Widget _buildImageAvatarSections() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r),
      child: CachedNetworkImage(
        imageUrl:
            'https://pbs.twimg.com/profile_images/1421484482943537154/R9wqd276_400x400.jpg',
        height: 42.r,
        width: 42.r,
      ),
    );
  }

  Widget _buildUserNameSections(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 4.w),
        Text(
          '@username',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
              ),
        ),
        SizedBox(width: 4.w),
        Container(
          height: 2.r,
          width: 2.r,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          'date',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
              ),
        ),
      ],
    );
  }

  Widget _buildTweetNavigatorSections(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLikeCount(context),
        SizedBox(width: 16.w),
        _buildCommentsCount(context),
        SizedBox(width: 16.w),
        _buildRetweetCount(context),
      ],
    );
  }

  Widget _buildCommentsCount(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.comment,
          size: 14.sp,
          color: Colors.grey,
        ),
        SizedBox(width: 4.w),
        Text(
          '123',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.grey),
        )
      ],
    );
  }

  Widget _buildRetweetCount(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.recycle,
          size: 14.sp,
          color: Colors.grey,
        ),
        SizedBox(width: 4.w),
        Text(
          '123',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.grey),
        )
      ],
    );
  }

  Widget _buildLikeCount(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.thumbsUp,
          size: 14.sp,
          color: Colors.grey,
        ),
        SizedBox(width: 4.w),
        Text(
          '123',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
