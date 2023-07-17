//menampung class widget yang menampung konten di setiap slidenya

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../common_widgets/primary_button.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../routing/app_router.dart';
import 'onboarding_slider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int? currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //fungsi untuk membuat layer pertama dalam tampilan onboarding
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_bg_infotrendz_logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 82,
                child: CarouselSlider(
                  items: const [
                    // item 1
                    OnboardingSliderFirst(),
                    // item 2
                    OnboardingSliderSecond(),
                    // item 3
                    OnboardingSliderThird(),
                    // item 4
                    OnboardingSliderFourth(),
                  ],
                  carouselController: carouselController, //layer kedua yang
                  options: CarouselOptions(
                    viewportFraction: 4,
                    height: double.infinity,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) => {
                      setState(() {
                        currentIndex = index;
                      })
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 18,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    //memanggil column
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(),
                      const Spacer(),
                      PrimaryButton(
                        text: currentIndex == 0 ? 'Ayo Mulai' : 'Lanjutkan',
                        onPressed: () {
                          currentIndex == 3
                              ? context.pushNamed(AppRoute.signIn.name)
                              : carouselController.nextPage();
                        },
                      ),
                      gapH32,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //fungsi container dalam widget
                            height: currentIndex == 0 ? 13 : 9,
                            width: currentIndex == 0 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: currentIndex == 1 ? 13 : 9,
                            width: currentIndex == 1 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: currentIndex == 2 ? 13 : 9,
                            width: currentIndex == 2 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: currentIndex == 3 ? 13 : 9,
                            width: currentIndex == 3 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 3
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      gapH32,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
