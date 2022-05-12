import 'package:flutter/material.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';
import 'package:netflix/presentation/widgets/main_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              // Gap(
              //   H: 10,
              // ),
              SearchTextWidget(title: "Relaease In The Past year"),
              Gap(
                H: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) => MainCard()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
