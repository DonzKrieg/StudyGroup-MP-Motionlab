import 'package:get/get.dart';

class CartController extends GetxController {
  final quantity = 0.obs;
  final quantity1 = 0.obs;
  final unitPrice = 54.00;
  final totalPrice = 0.0.obs;

  void updateTotalPrice() {
    totalPrice.value = quantity.value * unitPrice;
  }

  void quantityIncrement() {
    quantity.value++;
    update();
    updateTotalPrice();
  }

  void quantityDecrement() {
    if (quantity.value > 0) quantity.value--;
    updateTotalPrice();
  }

  void quantityIncrement1() {
    quantity1.value++;
    update();
    updateTotalPrice();
  }

  void quantityDecrement1() {
    if (quantity1.value > 0) quantity1.value--;
    updateTotalPrice();
  }
}
