import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_todolist/generated/l10n.dart';
import 'package:shared_todolist/core/injector.dart';
import 'package:shared_todolist/core/routes.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();

  await AppInjector().initializeDependencies();

  runApp(const SharedTodolist());
}

class SharedTodolist extends StatelessWidget {
  const SharedTodolist({super.key});

  @override
  Widget build(BuildContext context) {
    // final deviceLocale = PlatformDispatcher.instance.locale;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // locale: deviceLocale,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      onGenerateRoute: Routes().onGenerateRoutes,
    );
  }
}
