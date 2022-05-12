import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          // color: Colors.amber,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(samplePosters[2]))),
    );
  }
}
