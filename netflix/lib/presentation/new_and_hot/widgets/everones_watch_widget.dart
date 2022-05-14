import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/new_and_hot/widgets/nh_button_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    Key? key,
  }) : super(key: key);

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
                                image: NetworkImage(samplerPosterHorizontal))),
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
                      children: const [
                        Expanded(
                          child: Text(
                            "THE ARROW",
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
                        children: const [
                          Gap(
                            H: 20,
                          ),
                          Text(
                            "The Arrow",
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
                              "Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.",
                              style: TextStyle(
                                color: greyTextColor,
                              ),
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
