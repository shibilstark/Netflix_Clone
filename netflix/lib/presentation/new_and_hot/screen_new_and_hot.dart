import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everones_watch_widget.dart';

final samplerPosterHorizontal =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/vNnLAKmoczRlNarxyGrrw0KSOeX.jpg";

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hot & New",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast_rounded,
                  color: Colors.white,
                  size: 25,
                )),
            const Gap(
              W: 10,
            ),
            SizedBox(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.yellow])),
                width: 25,
                height: 25,
              ),
            ),
          ],
          bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: whiteColor,
              ),
              labelColor: blackColor,
              isScrollable: true,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: whiteColor,

              // labelPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              tabs: const [
                Tab(
                  text: "🎁 Coming Soon",
                ),
                Tab(
                  text: "🔥 Everyone's Watching",
                ),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TabBarView(children: [
            _buiilComingSoon(context),
            _buildEveryonesWatching(context),
          ]),
        ),
      ),
    );
  }
}

_buiilComingSoon(BuildContext context) {
  return ListView.builder(
    // separatorBuilder: ((context, index) => Gap()),
    shrinkWrap: true,
    itemCount: 3,
    itemBuilder: (context, index) => ComingSoonWidget(),
  );
}

_buildEveryonesWatching(BuildContext context) {
  return ListView.separated(
    separatorBuilder: ((context, index) => Gap(
          H: 10,
        )),
    shrinkWrap: true,
    itemCount: 3,
    itemBuilder: (context, index) => EveryOnesWatchingWidget(),
  );
}
