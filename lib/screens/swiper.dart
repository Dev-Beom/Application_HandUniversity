import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.asset('assets/1.png');
        },
        indicatorLayout: PageIndicatorLayout.NONE,
        autoplay: false,
        itemCount: 3,
        pagination: new SwiperPagination(builder: SwiperPagination.fraction),
        control: new SwiperControl(iconNext: null, iconPrevious: null),
      ),
    );
  }
}
