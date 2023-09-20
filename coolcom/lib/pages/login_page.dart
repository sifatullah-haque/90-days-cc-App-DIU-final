import 'package:coolcom/core/constains/color_is.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const _AppBarSection(),
              const _logoSection(),
              _emailAndPasswordSection(),
            ],
          ),
        ),
      ),
    ));
  }
}

class _emailAndPasswordSection extends StatelessWidget {
  final TextEditingController EmailEditingController = TextEditingController();
  final TextEditingController PasswordEditingController =
      TextEditingController();
  _emailAndPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email:",
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        ),
        TextField(
          controller: EmailEditingController,
          decoration: InputDecoration(
            hintText: "example@gmail.com",
            fillColor: ColorIs.almostWhite,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 26.0, horizontal: 18.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          "Password:",
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        ),
        TextField(
          controller: PasswordEditingController,
          obscureText: true,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            hintText: "********",
            fillColor: ColorIs.almostWhite,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 26.0, horizontal: 18.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {
                  String email = EmailEditingController.text;
                  String password = PasswordEditingController.text;
                  print("This is email $email and this is pass $password");
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorIs.kindaBlack,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r)),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorIs.itsGray,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class _logoSection extends StatelessWidget {
  const _logoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36.0),
      child: Center(
        child: Image.asset(
          "assets/graphics/common/logo.png",
          width: 177.w,
        ),
      ),
    );
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
          children: [
            Text(
              "Hello, Welcome 👋",
              style: TextStyle(fontSize: 14.sp),
            ),
            Text(
              "Lets Login or Signup",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
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
