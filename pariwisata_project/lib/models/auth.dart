import 'package:firebase_auth/firebase_auth.dart';

class AuthServcice {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future sigOut() async {
    await _auth.signOut();
  }
}


/*void logout() async {
  try {
    await FirebaseAuth.instance.signOut();
  } catch (e) {
    print("This is error $e");
    return null;
  } finally {
    print("Tetap dijalankan");
  }
}*/
