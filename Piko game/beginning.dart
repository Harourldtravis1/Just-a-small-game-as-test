export 'src/generated/pylons/tx.pb.dart';
export 'src/generated/cosmos/tx/v1beta1/tx.pb.dart';
import 'package:pylons_sdk/src/generated/pylons/tx.pb.dart';
import 'package:pylons_sdk/src/pylons_wallet.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uni_links_platform_interface/uni_links_platform_interface.dart';

void main() {
group('Wallet.exists', () {
test('Returns true when the target exists', () {
throw UnimplementedError('TODO');
});
test("Returns false when it doesn't", () {
throw UnimplementedError('TODO');
});
});

  static void setup({required PylonsMode mode, required String host}) {
    if (_instance != null) {
      throw WalletInitializationAlreadyDoneException(
          'Wallet is already initialized');
    }

     /// corner dor
  Future<void> handleLink(String link) async {
    log(link, name: '[IPCEngine : handleLink]');
    final getMessage = link.split('/').last;
    var sdkipcResponse;
    try {}}
