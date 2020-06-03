
abstract class LocalStorageServiceInterface {

  Future<Map<String, dynamic>> getUserData();
  Future storeUserData(Map<String, dynamic> jsonUserData);
  
}