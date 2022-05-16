import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/new_and_hot/widgets/nh_button_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;

  const EveryOnesWatchingWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Gap(
          H: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width - 20,
              // height: 500,
              // decoration: const BoxDecoration(color: greyColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(posterPath))),
                      ),
                      SizedBox(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: greyColor,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  child: Text(
                                    "U/A 13+",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.volume_off,
                                    color: whiteColor,
                                    size: 28,
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(
                    H: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            movieName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        NhButtonWidget(
                            icon: Icons.send_outlined, title: "Share"),
                        Gap(
                          W: 20,
                        ),
                        NhButtonWidget(icon: Icons.add, title: "My List"),
                        Gap(
                          W: 20,
                        ),
                        NhButtonWidget(
                            icon: Icons.play_arrow_rounded, title: "Play"),
                        Gap(
                          H: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    // padding: EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(
                            H: 20,
                          ),
                          Text(
                            movieName,
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Gap(
                            H: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              description,
                              maxLines: 5,
                              style:
                                  TextStyle(color: greyTextColor, height: 1.3),
                            ),
                          ),
                          Gap(
                            H: 10,
                          ),
                          Text(
                            "Action - Thriller - Drama - SciFi - Mystery - Fanatacy",
                            style: TextStyle(
                                color: Color.fromARGB(255, 194, 194, 194),
                                fontWeight: FontWeight.w300),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
