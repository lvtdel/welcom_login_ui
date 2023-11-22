import 'package:flutter/material.dart';
import 'package:welcom_login/Constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thông báo'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.check_circle,
                    size: 50,
                    color: Colors.green,
                  ),
                ),
                Text('Bạn đã đăng nhập thành công!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Đóng'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
      // appBar: AppBar(
      //   title: const Text("Home Page"),
      // ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18),
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: RichText(
                  text: const TextSpan(
                      text: "Your",
                      style: TextStyle(
                          fontSize: 32,
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: " workout partner",
                            style: TextStyle(color: Colors.black87))
                      ]),
                ),
              ),
              SizedBox(
                height: size.height * .3,
                child: Image.asset("assets/workout.png"),
              ),
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    // borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 0),
                      )
                    ]),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                        top: 10,
                        left: 20,
                        child: Text(
                          "Login Here",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        top: 50,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail_outline,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const TextField(
                                    cursorColor: Colors.grey,
                                    style: TextStyle(color: Colors.black54),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "example@gmail.com"),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * .8,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )),
                    Positioned(
                        top: 120,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.lock_outline,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const TextField(
                                    obscureText: true,
                                    cursorColor: Colors.grey,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 20,
                                        letterSpacing: 1.4),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "-----------",
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * .8,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )),
                    Positioned(
                      top: 180,
                      left: 20,
                      child: SizedBox(
                        width: size.width * .8,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Create Account",
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -30,
                      right: 30,
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          _showMyDialog(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff382743), Color(0xffff4590)],
                                stops: [0, 1],
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/right-arrow.png"),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
