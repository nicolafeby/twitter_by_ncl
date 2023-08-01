import 'package:flutter/material.dart';
import 'package:twitter_by_ncl/core/widget/drawer_widget.dart';
import 'package:twitter_by_ncl/presentation/search_page/widget/search_appbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const DrawerWidget(),
      appBar: SearchAppbar(
        globalKey: _key,
      ),
    );
  }
}
