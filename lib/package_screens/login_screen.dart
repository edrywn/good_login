import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class GoodLogin extends StatefulWidget {
  const GoodLogin({
    Key? key,
    this.width,
    this.usernameController,
    this.passwordController,
    this.hintUsername,
    this.hintPassword,
    this.color,
    this.image,
    this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  final double? width;
  final TextEditingController? usernameController;
  final TextEditingController? passwordController;
  final String? hintUsername;
  final String? hintPassword;
  final Color? color;
  final Image? image;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  @override
  State<GoodLogin> createState() => _GoodLoginState();
}

class _GoodLoginState extends State<GoodLogin> {
  final _formKey = GlobalKey<FormState>();

  VoidCallback get onPressed => widget.onPressed;

  bool? secure;
  String? valusername;
  String? valpassword;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secure = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor ?? Colors.white,
      width: widget.width ?? MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.image ??
                  Image.network(
                    'https://application.f21c.co.tz/static/images/login.png',
                    width: 100,
                  ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: TextFormField(
                  controller: widget.usernameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: widget.color ?? Colors.amber),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: widget.color ?? Colors.amber),
                    ),
                    // labelText: 'Email',
                    hintText: widget.hintUsername ?? "Username",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    valusername = value;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: TextFormField(
                  obscureText: secure!,
                  controller: widget.passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: widget.color ?? Colors.amber),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: widget.color ?? Colors.amber),
                    ),
                    // labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secure = !secure!;
                        });
                      },
                      icon: secure!
                          ? const Icon(Icons.lock_outline)
                          : const Icon(Icons.lock_open),
                    ),

                    hintText: widget.hintPassword ?? "Password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (String value) {
                    valpassword = value;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Bounce(
                duration: Duration(milliseconds: 110),
                onPressed: () {
                  onPressed();
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: widget.color ?? Colors.amber,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
