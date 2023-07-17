import 'package:flutter/material.dart';

import '../../../common_widgets/news_card.dart';

class DetailMenuScreen extends StatelessWidget {
  const DetailMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'InfoTrendz News',
        ),
      ),
      body: ListView(
        children: const [
          NewsCard(
            category: 'InfoTrendz News',
            image: 'assets/img_news_one.png',
            title:
                'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!',
          ),
        ],
      ),
    );
  }
}
