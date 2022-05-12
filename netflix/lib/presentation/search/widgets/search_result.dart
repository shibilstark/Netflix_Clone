import 'package:flutter/material.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextWidget(title: "Movies & TV"),
        Gap(
          H: 10,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 2 / 3,
            children: List.generate(20, (index) => MainPosterCard()),
          ),
        )
      ],
    );
  }
}

final samplePosters = [
  "https://www.themoviedb.org/t/p/w220_and_h330_face/nj5HmHRZsrYQEYYXyAusFv35erP.jpg",
  "https://www.themoviedb.org/t/p/w220_and_h330_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg",
  "https://www.themoviedb.org/t/p/w220_and_h330_face/bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg"
];

class MainPosterCard extends StatelessWidget {
  const MainPosterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(samplePosters[0]),
      ),
    ));
  }
}
