import 'package:flutter/material.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard(
      {Key? key, required String this.title, required String this.poster})
      : super(key: key);

  final title;
  final poster;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextWidget(title: title),
        const Gap(
          H: 5,
        ),
        LimitedBox(
          maxHeight: 160,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const Gap(
              W: 10,
            ),
            itemCount: 10,
            itemBuilder: (context, index) => Column(
              children: [
                Container(
                  width: 110,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage(poster))),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
