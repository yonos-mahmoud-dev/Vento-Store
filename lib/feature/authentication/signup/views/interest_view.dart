import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/feature/authentication/signup/viewmodel/signup_view_model.dart';
import 'package:vento_store/feature/authentication/signup/widgets/signup_form_header.dart';
import 'package:vento_store/shared/styles/y_spacing_style.dart';
import 'package:vento_store/shared/widgets/y_linear_progress_indicator.dart';

class InterestView extends StatelessWidget {
  const InterestView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categorise = [
      'Categorie One',
      'Categorie Tow',
      'Categorie Three',
      'Categorie Four',
      'Categorie Five',
      'Categorie Siex',
      'Categorie One',
      'Categorie Tow',
      'Categorie Three',
      'Categorie Four',
      'Categorie Five',
      'Categorie Siex',
    ];
    return Scaffold(
      appBar: AppBar(),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithDefaultWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const YLinearProgressIndicator(value: 0.8, text: '4/5'),
              const SizedBox(height: YSizes.spaceBtwItems),
              const SignUpFromHeader(
                headerTitle: 'Choose Shopping Categorise',
                headerSubTitle:
                    'We\'ll tailro insights based on what mtters to you best.',
              ),
              const SizedBox(height: YSizes.spaceBtwSections),

              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 56,
                ),
                itemCount: 12,

                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: YAppColors.borderLightecondary,
                          width: 2,
                        ),
                      ),

                      child: Text(categorise[index]),
                    ),
                  );
                },
              ),

              const SizedBox(height: YSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      context.read<SignupViewModel>().setPersonalInterset(),
                  child: const Text('Continuo'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
