import 'package:flutter/material.dart';
import 'package:simple_sebha/result_screen.dart';

import 'const/const.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  // const SebhaScreen({Key? key}) : super(key: key);
  int counter = 0;
  int sum = 0;

  Widget defultAzkarText({required String text}) => Text(
        text,
        style: const TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blue),
      );

  azkarText() {
    if (sum >= 1 && sum <= 33) {
      return defultAzkarText(text: 'سُبْحَانَ اللهِ');
    } else if (sum > 33 && sum <= 67) {
      return defultAzkarText(text: 'الْحَمْدُ لِلَّهِ ');
    } else if (sum > 67 && sum <= 101) {
      return defultAzkarText(text: 'لَا إِلَهَ إِلَّا اللهُ');
    } else if (sum > 100 && sum <= 135) {
      return defultAzkarText(text: 'اللهُ أَكْبَرُُ');
    } else {
      return defultAzkarText(text: 'سُبْحَانَ اللهِ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [backgroundColor1, backgroundColor2],
        )),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 70),
              child: Image.asset(
                "assets/images/belal.png",
                height: 120,
              ),
            ),
            Image.asset(
              "assets/images/quran.png",
              height: 170,
            ),
            const SizedBox(
              height: 30,
            ),
            azkarText(),
            const SizedBox(
              height: 25,
            ),
            Text(
              "$counter",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                      sum = 0;
                    });
                  },
                  icon: const Icon(Icons.refresh_outlined, size: 40),
                ),
                const SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      sum++;
                      if (counter > 33) {
                        counter = 0;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 90,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(result: sum)));
                  },
                  icon: const Icon(Icons.done, size: 40),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
