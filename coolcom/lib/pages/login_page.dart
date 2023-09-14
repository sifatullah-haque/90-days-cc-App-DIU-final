import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [_AppBarSection()],
        ),
      ),
    ));
  }
}

class _AppBarSection extends StatelessWidget {
  const _AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hello, Welcome 👋",
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              "Lets Login or Signup",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const CircleAvatar(
          backgroundImage: AssetImage("assets/graphics/common/avatar.png"),
        )
      ],
    );
  }
}
