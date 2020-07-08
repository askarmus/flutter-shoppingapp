import 'package:get/get.dart';

import '../../cart/cart_item.dart';
import '../order.dart';
import '../repo/i_orders_repo.dart';
import '../repo/orders_firebase_repo.dart';
import 'i_orders_service.dart';

class OrdersService implements IOrdersService {
  final IOrdersRepo _repo = Get.put(OrdersFirebaseRepo());

  @override
  List<Order> getAllOrders() {
    return _repo.getAllOrders();
  }

  @override
  void clearOrders() {
    _repo.clearOrdersList();
  }

  @override
  void addOrder(List<CartItem> cartItemsList, double amount) {
    _repo.addOrder(Order(
      DateTime.now().toString(),
      amount,
      cartItemsList,
      DateTime.now(),
    ));
  }

  @override
  int ordersQtde() {
    return _repo.getAllOrders().length;
  }
}