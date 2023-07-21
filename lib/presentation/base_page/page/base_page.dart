import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              color: _selectedIndex == index ? Colors.yellow : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
