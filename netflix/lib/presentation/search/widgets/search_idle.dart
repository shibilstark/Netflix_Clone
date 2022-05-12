import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

final verticalImages = [
  "https://www.themoviedb.org/t/p/w250_and_h141_face/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
  "https://www.themoviedb.org/t/p/w250_and_h141_face/eNI7PtK6DEYgZmHWP9gQNuff8pv.jpg"
];

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextWidget(
          title: "Top Searches",
        ),
        Gap(
          H: 10,
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchItemTile(),
            separatorBuilder: (context, index) => const Gap(
              H: 10,
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: 80,
      // decoration: BoxDecoration(color: Colors.grey),
      child: Row(children: [
        Container(
          height: 80,
          width: screenWidth * 0.33,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(verticalImages[0]))),
        ),
        const Gap(
          W: 5,
        ),
        const Expanded(
          child: Text(
            "Movie Name",
            textAlign: TextAlign.start,
            style: TextStyle(color: whiteColor, fontSize: 18),
          ),
        ),
        // IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       CupertinoIcons.play_arrow,
        //       color: whiteColor,
        //     ))

        const CircleAvatar(
          radius: 20,
          backgroundColor: whiteColor,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.play_arrow_rounded,
              color: whiteColor,
            ),
          ),
        )
      ]),
    );
  }
}
