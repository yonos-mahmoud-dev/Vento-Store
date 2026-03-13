import 'package:flutter/material.dart';
import 'package:vento_store/core/themes/app_theme.dart';
// import 'package:vento_store/feature/authentication/onboarding/views/onboading_view.dart';

import 'core/services/navigation_services.dart';
import 'routes/app_router.dart';
import 'routes/app_routes.dart';

class EnteryPoint extends StatelessWidget {
  const EnteryPoint({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationServices.navigatorKy,
      initialRoute: AppRoutes.signIn,
      onGenerateRoute: AppRouter.generateRoute,
      title: 'Vento Store',
      theme: YAppTheme.ligthTheme,
      darkTheme: YAppTheme.dakTheme,
      themeMode: ThemeMode.system,
    );
  }
}
