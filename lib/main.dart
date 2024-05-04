import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:task_management/firebase_options.dart';

import 'app/routes/routes.dart';
import 'app/routes/routes_call.dart';
import 'app/theme/theme.dart';
import 'controller/mainHomeViewModal.dart';

@pragma('vm:entry-point')
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MainHomeViewViewModal()),
        ],
        child: MaterialApp(
          builder: (context, child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(
                  textScaler: size.width > 600
                      ? const TextScaler.linear(0.5)
                      : const TextScaler.linear(1.0)),
              child: child!,
            );
          },
          title: 'Task Management',
          theme: MyTheme.lightTheme(context),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homeMain,
          onGenerateRoute: Routes.generateRoutes,
        ));
  }
}
