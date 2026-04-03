import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_images.dart';
import 'package:vento_store/feature/home/viewmodel/home_view_model.dart';
import 'package:vento_store/shared/widgets/container/y_container_image.dart';

class YCarouselDlider extends StatelessWidget {
  const YCarouselDlider({super.key});

  @override
  Widget build(BuildContext context) {
    final homeViewMmodel = context.watch<HomeViewModel>();
    return CarouselSlider(
      items: [
        const YContainerImage(
          applayImgRaduis: true,
          fit: BoxFit.cover,
          imgUrl: YAppImages.promoBannar1,
          height: 200,
          width: double.maxFinite,
        ),
        const YContainerImage(
          applayImgRaduis: true,
          fit: BoxFit.cover,
          imgUrl: YAppImages.promoBannar2,
          height: 200,
          width: double.maxFinite,
        ),
        const YContainerImage(
          applayImgRaduis: true,
          fit: BoxFit.cover,
          imgUrl: YAppImages.promoBannar3,
          height: 200,
          width: double.maxFinite,
        ),
        const YContainerImage(
          applayImgRaduis: true,
          fit: BoxFit.cover,
          imgUrl: YAppImages.promoBannar4,
          height: 200,
          width: double.maxFinite,
        ),
        const YContainerImage(
          applayImgRaduis: true,
          fit: BoxFit.cover,
          imgUrl: YAppImages.promoBannar5,
          height: 200,
          width: double.maxFinite,
        ),
      ],
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        onPageChanged: (index, _) => homeViewMmodel.updateSliderIndex(index),
        // autoPlayInterval: const Duration(milliseconds: 5000),
        initialPage: 1,
      ),
    );
  }
}
