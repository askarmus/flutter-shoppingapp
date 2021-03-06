import 'package:get/get.dart';

import '../../../core/properties/theme/dark_theme_controller.dart';
import '../../cart/core/cart_bindings.dart';
import '../../managed_products/core/managed_products_bindings.dart';
import '../../orders/core/orders_bindings.dart';
import '../controller/overview_controller.dart';
import '../repo/i_overview_repo.dart';
import '../repo/overview_firebase_repo.dart';
import '../service/i_overview_service.dart';
import '../service/overview_service.dart';

class OverviewBindings extends Bindings {
  void dependencies() {
    Get.lazyPut<DarkThemeController>(() => DarkThemeController());

    Get.lazyPut<IOverviewRepo>(() => OverviewFirebaseRepo());
    Get.lazyPut<IOverviewService>(() => OverviewService(
          repo: Get.find(),
          managedProductsService: Get.find(),
        ));
    Get.lazyPut<OverviewController>(
        () => OverviewController(service: Get.find()));

    OrdersBindings().dependencies();

    CartBindings().dependencies();

    ManagedProductsBindings().dependencies();
  }
}
