import 'package:flutter/material.dart';

class SetupVerythingsView extends StatelessWidget {
  const SetupVerythingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Just a moment few seconds',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Make\'s everythings ready for you.',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const AnimatedCrossFade(
              firstChild: Image(
                image: AssetImage(
                  'assets/images/onboarding/sammy-line-searching.gif',
                ),
              ),
              secondChild: Image(
                image: AssetImage(
                  'assets/images/onboarding/sammy-line-shopping.gif',
                ),
              ),
              crossFadeState: CrossFadeState.showSecond,
              duration: Duration(seconds: 5),
            ),
          ],
        ),
      ),
    );
  }
}
