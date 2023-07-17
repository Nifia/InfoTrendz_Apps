//membuat halaman HomeScreen

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infotrendz/common_widgets/heading_news_widget.dart';
import 'package:infotrendz/common_widgets/news_card.dart';
import 'package:infotrendz/constants/app_sizes.dart';

import '../../../routing/app_router.dart';
import '../../../shared/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("InfoTrendz.com"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                context.pushNamed(AppRoute.profile.name);
              },
              icon: const Icon(
                Icons.account_circle,
                size: 30.0,
              ),
            ),
          ],
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              gapH32,
              Text(
                'Berita Terbaru',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              gapH20,
              HeadingNewsWidget(
                category: 'Lifestyle',
                title:
                    "10 Tanda Kita Terlalu Fokus Diet yang Malah Mengacaukan Hidup",
                image: 'assets/img_news_one.jpeg',
                onTap: () {
                  context.pushNamed(AppRoute.detailNews.name);
                },
                onPressedMore: () {},
              ),
              gapH40,
              NewsCard(
                category: 'Entertaintment',
                image: 'assets/img_news_three.jpeg',
                title:
                    '5 Lagu Taylor Swift yang Terinspirasi dari Kisah Cinta dengan Mantan Kekasih',
                onTap: () {},
                onPressedMore: () {},
              ),
              NewsCard(
                category: 'Edukasi',
                image: 'assets/img_news_two.jpeg',
                title: 'Paduan Suara TRCC Raih Juara Umum Kompetisi di Italia',
                onTap: () {},
                onPressedMore: () {},
              ),
              NewsCard(
                category: 'Travel',
                image: 'assets/img_news_four.jpeg',
                title:
                    '16 Hotel dengan Akses Mal di Jakarta, Ada yang Dekat Monas',
                onTap: () {},
                onPressedMore: () {},
              ),
            ]));
  }
}
