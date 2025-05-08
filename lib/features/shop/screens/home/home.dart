import 'package:caferesto/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../authentication/screens/home/widgets/home_categories.dart';
import '../widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Primary Header Container
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// SearchBar --
                  TSearchContainer(
                    text: 'Rechercher dans le Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(
                      left: TSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: 'Catégories Populaires',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// Categories List
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(viewportFraction: 1),
                      items: [
                        TRoundedImage(
                          imageUrl: TImages.promoBanner1,
                        ),
                        TRoundedImage(
                          imageUrl: TImages.promoBanner2,
                        ),
                        TRoundedImage(
                          imageUrl: TImages.promoBanner3,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          TCircularContainer(
                            width: 20,
                            height: 4,
                            margin: EdgeInsets.only(right: 10),
                            backgroundColor: Colors.green,
                          ),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
