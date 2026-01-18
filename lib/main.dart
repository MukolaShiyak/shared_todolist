import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_todolist/core/generated/l10n.dart';
import 'package:shared_todolist/core/routes.dart';

void main() {
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
