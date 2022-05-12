import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoListItems(index: index),
          ),
        ),
      ),
    );
  }
}

class VideoListItems extends StatelessWidget {
  const VideoListItems({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomt,
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // LeftSide
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_mute_outlined,
                    size: 30,
                    color: whiteColor,
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          samplePosters[0],
                        ),
                      ),
                      const Gap(
                        H: 20,
                      ),
                      const VideoActionIconWidget(
                          title: "LOL", icon: Icons.emoji_emotions),
                      const Gap(
                        H: 30,
                      ),
                      const VideoActionIconWidget(
                          title: "My List", icon: Icons.add),
                      const Gap(
                        H: 30,
                      ),
                      const VideoActionIconWidget(
                          title: "Share", icon: Icons.share),
                      const Gap(
                        H: 30,
                      ),
                      const VideoActionIconWidget(
                          title: "Play", icon: Icons.play_arrow_rounded),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionIconWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionIconWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: whiteColor,
        size: 30,
      ),
      Text(
        title,
        style: const TextStyle(color: whiteColor, fontSize: 13),
      ),
    ]);
  }
}
