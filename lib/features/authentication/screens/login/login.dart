import 'package:caferesto/common/styles/spacing_styles.dart';
import 'package:caferesto/common/widgets.login_signup/form_divider.dart';
import 'package:caferesto/features/authentication/screens/login/widgets/login_form.dart';
import 'package:caferesto/features/authentication/screens/login/widgets/login_header.dart';
import 'package:caferesto/common/widgets.login_signup/social_buttons.dart';
import 'package:caferesto/utils/constants/sizes.dart';
import 'package:caferesto/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Logo, Title and Sub tilte
            TLoginHeader(dark: dark),

            /// form
            const TLoginForm(),

            /// Divider
            TFormDivider(dark: dark),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Footer
            const TSocialButtons()
          ],
        ),
      ),
    ));
  }
}
