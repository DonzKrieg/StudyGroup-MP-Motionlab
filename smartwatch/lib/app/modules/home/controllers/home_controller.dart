import 'package:get/get.dart';
import 'package:smartwatch/app/data/models/product_model_api.dart';
import 'package:smartwatch/services/product_service.dart';

class HomeController extends GetxController {
  String selectedCategory = 'All';
  List<ProductElement> filteredProducts = [];
  var product = Product().obs;

  var categoriesMap = <String, String>{'All': 'All'}.obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void filterProducts(String displayCategory) {
    selectedCategory = displayCategory;
    update();

    final rawCategory = categoriesMap[displayCategory];
    if (rawCategory == 'All') {
      filteredProducts = product.value.products ?? [];
    } else {
      filteredProducts = product.value.products
              ?.where((prod) =>
                  prod.category?.toString().toLowerCase() == rawCategory)
              .toList() ??
          [];
    }

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

      final cleanCategories = {
        for (var category in uniqueCategories)
          category.split('.').last.capitalizeFirst!: category
      };

      categoriesMap.value = {'All': 'All', ...cleanCategories};
      filteredProducts = product.value.products ?? [];
    } catch (e) {
      print("Error fetching products: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
