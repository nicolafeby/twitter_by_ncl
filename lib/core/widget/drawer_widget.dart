import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF002444),
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF001A31),
            ),
            child: _buildProfileInformations(context),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileInformations(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildImageAvatar(),
        SizedBox(height: 8.h),
        _buildName(context),
        _buildUsername(context),
        SizedBox(height: 4.h),
        _buildInformations(context),
      ],
    );
  }

  Widget _buildImageAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r),
      child: CachedNetworkImage(
        imageUrl:
            'https://pbs.twimg.com/profile_images/1421484482943537154/R9wqd276_400x400.jpg',
        height: 48.r,
        width: 48.r,
      ),
    );
  }

  Widget _buildName(BuildContext context) {
    return Text(
      'Name',
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }

  Widget _buildUsername(BuildContext context) {
    return Text(
      '@username',
      style:
          Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
    );
  }

  Widget _buildInformations(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: '12'),
              TextSpan(
                text: ' Following',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(width: 8.w),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: '12'),
              TextSpan(
                text: ' Following',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
