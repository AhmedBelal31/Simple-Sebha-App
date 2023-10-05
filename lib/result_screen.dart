import 'package:flutter/material.dart';
import 'const/const.dart';

class ResultScreen extends StatelessWidget {
  //const ResultScreen({Key? key}) : super(key: key);
  final int result;

  ResultScreen({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [backgroundColor1, backgroundColor2],
        )),
        width: double.infinity,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 50),
              child: Image.asset(
                "assets/images/belal.png",
                height: 200,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "عدد التسبيحات ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "العوده للرئيسيه",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
