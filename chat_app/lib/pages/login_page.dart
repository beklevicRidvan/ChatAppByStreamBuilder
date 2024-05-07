import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../services/auth/auth_service.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  // tap to go to the register page

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  // login method
  void login(BuildContext context) async {
    final authService = AuthService();


    try {
      await authService.signWithEmailPassword(
          _emailController.text, _pwController.text);
    } catch (e) {
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text(e.toString()),
        );
      },);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(
              height: 50,
            ),
            // welcome back message

            Text(
              "Welcome back,yo've been missed!",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            // email textfield

            MyTextField(
              hintText: "Email",
              controller: _emailController,
              obscureValue: false,
            ),
            const SizedBox(
              height: 25,
            ),

            // password textfield
            MyTextField(hintText: "Password", controller: _pwController,obscureValue: true,),
            const SizedBox(
              height: 25,
            ),

            //login button
            MyButton(
              text: "Login",
              onTap: () => login(context),
            ),
            const SizedBox(
              height: 25,
            ),

            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                    onTap: onTap,
                    child: Text(
                      " Register now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
