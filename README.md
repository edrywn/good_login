<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

<h1>Good Login</h1>
This package can help you to create a simple login widget, include with validator.

## Features

<table>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/49123187/201354510-5d97bcf1-f23e-47d2-8471-7063d041e4c9.png" alt="Success Status" width="200"></td>
  </tr>
</table>

<table>
  <tr>
    <th>Type</th>
    <th>Attribute</th>
  </tr>
  <tr>
    <td>TextEditingController</td>
    <td>usernameController</td>
  </tr>
  <tr>
    <td>TextEditingController</td>
    <td>passwordController</td>
  </tr>
  <tr>
    <td>String</td>
    <td>hintUsername</td>
  </tr>
  <tr>
    <td>String</td>
    <td>hintPassword</td>
  </tr>
  <tr>
    <td>Color</td>
    <td>color</td>
  </tr>
  <tr>
    <td>Color</td>
    <td>backgroundColor</td>
  </tr>
  <tr>
    <td>Image</td>
    <td>image</td>
  </tr>
  <tr>
    <td>VoidCallback</td>
    <td>onPressed</td>
  </tr>
 
</table>

## Getting started

First of all, you have to add this package in to pubspec.yaml

```yaml
dependencies:
  good_login: any
```

and after that, you can import thi package using:

```dart
import 'package:good_login/good_login.dart';
```

## Usage

To use this package, you can put this package in to your any widget.

```dart


login(String user, String pw) {
    print(user);
    print(pw);
  }

Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                  GoodLogin(
                  color: Colors.blue[300],
                  usernameController: usercontroller,
                  passwordController: pwcontroller,
                  onPressed: () {
                    login(usercontroller.text, pwcontroller.text);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


```
