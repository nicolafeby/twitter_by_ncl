import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
          child: CachedNetworkImage(
            imageUrl:
                'https://pbs.twimg.com/profile_images/1421484482943537154/R9wqd276_400x400.jpg',
            height: 32.r,
            width: 32.r,
          ),
        ),
      ],
    );
  }
}
