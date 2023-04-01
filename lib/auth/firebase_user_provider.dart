import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AicteFirebaseUser {
  AicteFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AicteFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AicteFirebaseUser> aicteFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AicteFirebaseUser>(
      (user) {
        currentUser = AicteFirebaseUser(user);
        return currentUser!;
      },
    );
