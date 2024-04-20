import 'package:efficacy_user/config/config.dart';
import 'package:efficacy_user/pages/homepage/widgets/events_showcase_page/events_showcase_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  static const String routeName = "/explorePage";

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              // vertical: 15.0,
            ),
            child: Text(
              "Explore",
              style: TextStyle(
                fontSize: width * 0.07,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 79, 78, 78),
              ),
            ),
          ),
          actions: [
            const Icon(CupertinoIcons.bell),
            Padding(
              padding: EdgeInsets.only(right: 28.0),
              child: Icon(
                Icons.code,
                size: width * 0.1,
              ),
            ),
          ].separate(30),
          bottom: const TabBar(
            indicatorWeight: 1,
            indicatorColor: accent,
            tabs: [
              Tab(text: "Upcoming"),
              Tab(text: "Ongoing"),
              Tab(text: "Completed"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            EventsShowcasePage(
              showSubscribedOnly: false,
              currentEventFilterTypeIndex: ValueNotifier(0),
            ),
            EventsShowcasePage(
              showSubscribedOnly: false,
              currentEventFilterTypeIndex: ValueNotifier(1),
            ),
            EventsShowcasePage(
              showSubscribedOnly: false,
              currentEventFilterTypeIndex: ValueNotifier(2),
            ),
          ],
        ),
      ),
    );
  }
}
