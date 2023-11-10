



import 'package:module_1/test1_page.dart';
import 'package:module_1/test1_provider.dart';
import 'package:provider/provider.dart';

MultiProvider baseMultiProvider() {
  return MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Counter(),
    ),
  ],
    child: Test1Page(),
  );
}