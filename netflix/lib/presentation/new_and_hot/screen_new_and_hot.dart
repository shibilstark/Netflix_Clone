import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';

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
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
        body: TabBarView(children: [

          _buildComingSoon(){}
         
        ]),
      ),
    );
  }
}

