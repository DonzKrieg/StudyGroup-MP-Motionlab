import 'package:get/get.dart';
import 'package:smartwatch/app/data/models/product_model_api.dart';
import 'package:smartwatch/services/product_service.dart';

class HomeController extends GetxController {
  String selectedCategory = 'All';
  List<ProductElement> filteredProducts = [];
  var product = Product().obs;
  var categories =
      <String>['All'].obs; // Tambahkan 'All' sebagai kategori default
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void filterProducts(String category) {
    selectedCategory = category;
    update();

    if (category == 'All') {
      filteredProducts = product.value.products ?? [];
    } else {
      filteredProducts = product.value.products
              ?.where((prod) =>
                  prod.category?.toString().toLowerCase() ==
                  category.toLowerCase())
              .toList() ??
          [];
    }

    // Debugging log
    print("Filtered Products: $filteredProducts");

    update();
  }

  void fetchProduct() async {
    try {
      isLoading.value = true;
      product.value = await ProductService().getProducts() ?? Product();

      final uniqueCategories = product.value.products
              ?.map((prod) => prod.category?.toString().trim().toLowerCase())
              .whereType<String>()
              .toSet()
              .toList() ??
          [];
      categories.value = ['All', ...uniqueCategories];
      filteredProducts = product.value.products ?? [];
    } catch (e) {
      print("Error fetching products: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
