import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import '../shared/theme.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    this.onTap,
    this.onPressedMore,
  });

  final String image;
  final String title;
  final String category;
  final VoidCallback? onTap;
  final VoidCallback? onPressedMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'InfoTrendz News',
                          style: orangeTextStyle,
                        ),
                        gapH4,
                        Text(
                          title,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                      ],
                    ),
                  ),
                  gapW20,
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 119,
                      height: 88,
                    ),
                  )
                ],
              ),
              gapH20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '23 Jan 2023, 17: 40',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              gapH20,
            ],
          ),
        ),
        Divider(
          color: lightGreyColor,
          thickness: 1,
        )
      ],
    );
  }
}
