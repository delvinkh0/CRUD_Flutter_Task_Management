import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/db/db_helper.dart';
import 'package:flutter_to_do_app/services/theme_services.dart';
import 'package:flutter_to_do_app/ui/home_page.dart';
import 'package:flutter_to_do_app/ui/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

Future<void> main() async {
  sqflite.databaseFactory = sqflite.databaseFactory;

  WidgetsFlutterBinding.ensureInitialized();

  // Initialize database
  await DBHelper.initDB();

  // Initialize GetStorage
  await GetStorage.init();

  // Run the application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: const HomePage(),
    );
  }
}
