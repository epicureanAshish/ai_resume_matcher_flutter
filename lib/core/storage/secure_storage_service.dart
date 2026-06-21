import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static const _storage =
  FlutterSecureStorage();

  Future<void> saveToken(
      String token) async {
    await _storage.write(
      key: 'token',
      value: token,
    );
  }

  Future<String?> getToken() async {
    return _storage.read(key: 'token');
  }

  Future<void> clear() async {
    await _storage.deleteAll();
  }
}