import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sous total',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '256 DT',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),

        /// Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Frais de livraison',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '6 DT',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),

        /// Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Taxes',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '6 DT',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),

        /// Order total fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              '6 DT',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
