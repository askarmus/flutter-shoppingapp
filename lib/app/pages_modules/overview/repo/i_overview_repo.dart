import '../../managed_products/entities/product.dart';

abstract class IOverviewRepo {
  Future<List<Product>> getProducts();

  Future<int> updateProduct(Product product);
}
