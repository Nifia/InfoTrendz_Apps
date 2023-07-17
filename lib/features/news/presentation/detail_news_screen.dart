// detail news screen

import 'package:flutter/material.dart';
import 'package:infotrendz/constants/app_sizes.dart';
import 'package:infotrendz/shared/theme.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("InfoTrendz.com"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: whiteColor,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          gapH24,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Lifestyle',
                style: orangeTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              gapW12,
              Text(
                'Selasa, 24 Jan 2023, 12.48 WIB ',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              )
            ],
          ),
          gapH24,
          Text(
            '10 Tanda Kita Terlalu Fokus Diet yang Malah Mengacaukan Hidup',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          gapH24,
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'assets/img_news_one.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          gapH16,
          RichText(
            text: TextSpan(
              text: 'Penulis: ',
              style: blackTextStyle.copyWith(fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: 'Sekar Langit Nariswari',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          gapH16,
          // News
          RichText(
            text: TextSpan(
              text: 'InfoTrendz.com - ',
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Dalam upaya untuk hidup sehat dan menjaga berat badan yang ideal, banyak orang seringkali terlalu fokus pada diet mereka. Meskipun tujuan tersebut bisa saja terdengar baik, namun terlalu terobsesi dengan diet bisa berdampak negatif pada kesehatan dan kualitas hidup seseorang. Dalam artikel ini, kita akan menjelajahi 10 tanda bahwa kita terlalu fokus pada diet, yang justru dapat mengacaukan hidup kita. Penting untuk memahami bahwa keseimbangan adalah kunci utama dalam mencapai gaya hidup sehat.',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
