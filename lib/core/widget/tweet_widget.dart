import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TweetWidget extends StatelessWidget {
  const TweetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildImageAvatarSections(),
        Column(
          children: [
            _buildUserNameSections(),
            _buildTweetSections(),
          ],
        ),
      ],
    );
  }

  Widget _buildTweetSections() {
    return Text('tweet ya');
  }

  Widget _buildImageAvatarSections() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r),
      child: CachedNetworkImage(
        imageUrl: 'https://pbs.twimg.com/profile_images/1421484482943537154/R9wqd276_400x400.jpg',
        height: 32.r,
        width: 32.r,
      ),
    );
  }

  Widget _buildUserNameSections() {
    return Row(
      children: [
        Text('data'),
        Text('data'),
        Container(
          height: 4.r,
          width: 4.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
        ),
        Text('data'),
      ],
    );
  }
}
