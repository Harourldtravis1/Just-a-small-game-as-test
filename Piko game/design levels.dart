import 'package:pylons_sdk/src/features/models/sdk_ipc_message.dart';
import 'package:pylons_sdk/src/features/models/sdk_ipc_response.dart';
import 'package:pylons_sdk/src/generated/pylons/recipe.pb.dart';


"Testing bottom sheet showing",
        (tester) async {
          await tester.setScreenSize();
          await tester.testAppForWidgetTesting(
            Scaffold(
              body: ChangeNotifierProvider(
                create: (ctx) => GetIt.I.get<CreatorHubViewModel>(),
                builder: (context, _) {
                  return DraftListTile(
                    nft: MOCK_NFT,
                    viewModel: GetIt.I.get<CreatorHubViewModel>(),
                  );
                },
              ),
            ),
          );

            Future<SDKIPCResponse> txPlaceForSale(ItemRef item, int price) async {
    return Future.sync(() async {
      return await _dispatch(Strings.TX_PLACE_FOR_SALE, jsonEncode([jsonEncode(item.toProto3Json()), price]),
          requestResponse: true);
    });
  }
