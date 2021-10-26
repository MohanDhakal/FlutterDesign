import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GmailLogin extends StatelessWidget {
  const GmailLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text("Gmail Sign in "),
              onPressed: () async {
                GoogleSignIn googleSignIn = GoogleSignIn(scopes: [
                  'email',
                ]);
                GoogleSignInAccount? account = await googleSignIn.signIn();
                print("Account Name: ${account?.displayName}");
              },
            )
          ],
        ),
      ),
    );
  }
}
