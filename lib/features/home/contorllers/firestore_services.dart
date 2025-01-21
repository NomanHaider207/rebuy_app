import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rebuy/features/auth/presentation/signup/contoller/user/user_mode.dart';

class AppUserData {
  Future<AppUser?> getUserData(String uid) async {
    try {
      DocumentReference userDoc = FirebaseFirestore.instance.collection('users').doc(uid);
      DocumentSnapshot snapshot = await userDoc.get();

      if (snapshot.exists && snapshot.data() != null) {
        return AppUser.fromFirestore(snapshot.data() as Map<String, dynamic>);
      } else {
        print("[AppUserData] No user found for UID: $uid");
        return null;
      }
    } catch (e) {
      print("[AppUserData] Error fetching user data: $e");
      return null;
    }
  }

}
