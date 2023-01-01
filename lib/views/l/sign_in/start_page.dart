import 'package:e_commerce/views/l/login_view/login_view.dart';
import 'package:e_commerce/views/l/profile_view/profile_view.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/splash/start.png',
                height: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Let's you in",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/signup/facebook.png',
                      height: 30,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Continue with Facebook',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/signup/google.png',
                    height: 30,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/signup/apple.png',
                    height: 30,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Continue with Apple',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  endIndent: 15,
                )),
                Text(
                  'or',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: Divider(
                  indent: 15,
                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff1c718e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text('Sign in with Password'),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileView()),
                );
              },
              child: RichText(
                text: const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    children: [
                      TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                              color: Color(0xff1c718e),
                              fontWeight: FontWeight.normal,
                              fontSize: 20)),
                    ]),
              ),
            ),
            // RowImgText.ImgText(
            //     Image.asset(
            //       'assets/signup/facebook.png',
            //     ),
            //     'text'),
          ],
        ),
      ),
    );
  }
}
