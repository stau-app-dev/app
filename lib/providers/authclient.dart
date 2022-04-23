import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';

class AuthClient extends BaseClient {
  final Client _inner = Client();

  static Map<String, String> _headers() {
    if (FirebaseAuth.instance.currentUser != null) {
      FirebaseAuth.instance.currentUser!.getIdToken().then((token) {
        return {
          'Authorization': 'Bearer $token',
        };
      });
    }
    return {};
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers.addAll(_headers());
    return _inner.send(request);
  }
}

AuthClient authClient = AuthClient();
