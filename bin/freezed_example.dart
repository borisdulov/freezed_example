import 'package:freezed_example/provider/fakestoreapi_provider.dart';

void main(List<String> arguments) async {
  final provider = FakeStoreApiProvider();
  final carts = await provider.getCarts();
  print(carts);
}
