import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../services/auth/auth_service.dart';

class RegisterPage extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  // tap to go to login page
  final void  Function()? onTap;

  RegisterPage({super.key,required this.onTap});


  // register method
  void register(BuildContext context)async{
    final authService = AuthService();
    if(_pwController.text == _confirmController.text){
      try{
        await authService.signUpWithEmailPassword(_emailController.text, _pwController.text);

      }
      catch (e) {
        showDialog(context: context, builder: (context) {
          return AlertDialog(
            title: Text(e.toString()),
          );
        },);
      }

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
              "Let's create an account for you",
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
            MyTextField(hintText: "Confirm Password", controller: _confirmController,obscureValue: true,),
            const SizedBox(
              height: 25,
            ),
            //login button
            MyButton(
              text: "Register",
              onTap: ()=>register(context),
            ),
            const SizedBox(
              height: 25,
            ),

            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style:
                  TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                    onTap: onTap,
                    child: Text(
                      " Login now",
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
