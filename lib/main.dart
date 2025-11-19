import 'package:asset_shield/core/config/configs.dart';
import 'package:asset_shield/core/routes/router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utility/client.dart';

final container = ProviderContainer();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Configs().configLoading();
  Client.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(UncontrolledProviderScope(container: container, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          // localizationsDelegates: [
          //   AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          supportedLocales: [
            Locale('en'), // English
            Locale('es'), // Spanish
          ],
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          title: 'Asset Shield',
          // theme: AppTheme.lightTheme,
          builder: (context, child) {
            child = EasyLoading.init()(context, child);
            child = BotToastInit()(context, child);
            return child;
          },
        );
      },
    );
  }
}
