import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: _HomePageStateful(),
      ),
    );
  }

  Widget _HomePageStateful() {
    return Scaffold(

      appBar: AppBar(
        title: Text('Animation Text Package'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: <Widget>[
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hello world!',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 2000),
                ),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            SizedBox(height: 40,),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Look at the waves', textStyle: TextStyle(color: Colors.black, fontSize: 25)),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: SizedBox(
                width: 250.0,
                child: TextLiquidFill(
                  loadDuration: Duration(seconds: 20),
                  text: 'LIQUIDY',
                  waveColor: Colors.blueAccent,
                  boxBackgroundColor: Colors.redAccent,
                  textStyle: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 120.0,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 60,),
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 35.0),
                ),
                Expanded(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('AWESOME', textStyle: TextStyle(color: Colors.black)),
                        RotateAnimatedText('OPTIMISTIC', textStyle: TextStyle(color: Colors.black)),
                        RotateAnimatedText('DIFFERENT', textStyle: TextStyle(color: Colors.black)),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Discipline is the best tool', textStyle: TextStyle(color: Colors.black)),
                    TypewriterAnimatedText('Design first, then code', textStyle: TextStyle(color: Colors.black)),
                    TypewriterAnimatedText('Do not patch bugs out, rewrite them', textStyle: TextStyle(color: Colors.black)),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
