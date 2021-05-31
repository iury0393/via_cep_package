import 'package:flutter_test/flutter_test.dart';
import 'package:via_cep_package/via_cep_package.dart';

void main() {
  test('consumir api viacep', () async {
    final viacepSearch = await ViaCepSearch.getInstace("60110300");
    expect(viacepSearch, isA<ViaCepSearch>());
  });
}
