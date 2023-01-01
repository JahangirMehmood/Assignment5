import 'package:flutter/material.dart';

import '../detail_view/detail_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool is_Select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/splash/login.png',
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Login to Your Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        // borderSide: BorderSide.none,
                        )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffix: Icon(Icons.visibility),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        // borderSide: BorderSide.none,
                        )),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: is_Select,
                    onChanged: (val) {
                      setState(() {
                        is_Select = val!;
                      });
                    },
                  ),
                  const Text('Remember')
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
                            builder: (context) => const DetailView()),
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
                onTap: () {},
                child: const Text(
                  'Forget Password',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'or continue with',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/signup/facebook.png',
                      height: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/signup/google.png',
                      height: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/signup/apple.png',
                      height: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    children: [
                      TextSpan(
                          text: "Sign in",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                              fontSize: 20)),
                    ]),
              ),
              // RowImgText.ImgText(
              //     Image.asset(
              //       'assets/signup/facebook.png',
              //     ),
              //     'text'),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// void main() {
//   runApp(
//       MaterialApp(
//         home: MyApp(),
//       )
//   );
// }
//
// class MyApp extends StatefulWidget{
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   bool passenable = true; //boolean value to track password view enable disable.
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title:Text("View/Hide Password on TextField"),
//           backgroundColor: Colors.purple,
//         ),
//         body: Container(
//             height: 200,
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(20),
//             child: Column(
//               children: [
//
//                 TextField(
//                   decoration: InputDecoration(
//                       hintText: "Enter Username Here",
//                       labelText: "Username"
//                   ),
//                 ),
//
//                 TextField(
//                   obscureText: passenable, //if passenable == true, show **, else show password character
//                   decoration: InputDecoration(
//                       hintText: "Enter Password Here",
//                       labelText: "Password",
//                       suffix: IconButton(onPressed: (){ //add Icon button at end of TextField
//                         setState(() { //refresh UI
//                           if(passenable){ //if passenable == true, make it false
//                             passenable = false;
//                           }else{
//                             passenable = true; //if passenable == false, make it true
//                           }
//                         });
//                       }, icon: Icon(passenable == true?Icons.remove_red_eye:Icons.password))
//                     //eye icon if passenable = true, else, Icon is ***__
//                   ),
//
//                 ),
//
//               ],
//             )
//         )
//     );
//   }
// }
