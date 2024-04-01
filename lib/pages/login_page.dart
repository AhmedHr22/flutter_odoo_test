import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          children: [_header(context), _inputField(context), _signup(context)],
        ),
      ),
    );
  }
}

_header(context) {
  return const Column(
    children: [
      Text(
        "Welcome Back",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
      ),
      Text("Enter your credential to login"),
    ],
  );
}

_inputField(context) {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
            hintText: "email",
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                borderSide: BorderSide.none),
            fillColor: Colors.deepPurple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person)),
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.deepPurple.withOpacity(0.1),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.purple),
        onPressed: () {},
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ],
  );
}

_signup(context) {
  return Row(
    children: [
      const Text("ont have an account ,"),
      TextButton(
        onPressed: () {},
        child: const Text(
          "singUp",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.purple),
        ),
      )
    ],
  );
}
