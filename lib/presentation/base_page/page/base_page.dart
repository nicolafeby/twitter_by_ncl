import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_by_ncl/presentation/comunity_page/page/comunity_page.dart';
import 'package:twitter_by_ncl/presentation/home_page/page/home_page.dart';
import 'package:twitter_by_ncl/presentation/message_page/page/message_page.dart';
import 'package:twitter_by_ncl/presentation/notification_page/page/notification_page.dart';
import 'package:twitter_by_ncl/presentation/search_page/page/search_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  Widget _generatePage() {
    switch (_selectedIndex) {
      case 1:
        return const SearchPage();
      case 2:
        return const ComunityPage();
      case 3:
        return const NotificationPage();
      case 4:
        return const MessagePage();

      default:
        return const HomePage();
    }
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _generatePage(),
      bottomNavigationBar: _buildNavigator(),
    );
  }

  Widget _buildNavigator() {
    List iconList = [
      Icons.home,
      Icons.search,
      Icons.group,
      Icons.notifications,
      Icons.email,
    ];
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: const BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            offset: Offset(0, 3.5),
            color: Colors.white,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          5,
          (index) => InkWell(
            onTap: () {
              _selectedIndex = index;
              setState(() {});
            },
            child: Icon(
              iconList[index],
              size: 26.sp,
              color: _selectedIndex == index ? Colors.yellow : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
