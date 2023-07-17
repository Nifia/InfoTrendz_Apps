import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import '../shared/theme.dart';

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.42,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.42,
              child: Image.asset(
                'assets/img_category_one.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8.0, left: 7.0),
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lifestyle',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                gapH4,
                Text(
                  'Aktual dan terkini seputar Lifestyle',
                  overflow: TextOverflow.ellipsis,
                  style: whiteTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
