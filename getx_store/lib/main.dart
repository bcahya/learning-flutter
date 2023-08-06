import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_store/app_theme.dart';
import 'package:getx_store/controllers/theme_controller.dart';
import 'package:getx_store/home.dart';
import 'package:getx_store/screens/add_followers.dart';
import 'package:getx_store/screens/add_reviews.dart';
import 'package:getx_store/screens/add_follower_count.dart';
import 'package:getx_store/screens/update_store_name.dart';
import 'package:getx_store/screens/store_status.dart';
import 'package:getx_store/screens/update_menu.dart';
import 'package:getx_store/services/storage_service.dart';
import 'package:getx_store/store_binding.dart';

Future<void> main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GetX Store",
      initialBinding: StoreBinding(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
        ),
        GetPage(name: '/edit_name', page: () => UpdateStoreName()),
        GetPage(name: '/add_followers', page: () => AddFollowers()),
        GetPage(
          name: '/toggle_status',
          page: () => StoreStatus(),
        ),
        GetPage(name: '/edit_follower_count', page: () => AddFollowerCount()),
        GetPage(name: '/add_reviews', page: () => AddReviews()),
        GetPage(name: '/update_menu', page: () => const UpdateMenu()),
      ],
      home: Home(),
    );
  }
}
