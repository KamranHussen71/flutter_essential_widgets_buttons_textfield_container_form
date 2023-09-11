import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Homescreen(),
      title: 'Ostad app',
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.purple,
                  textStyle: TextStyle(fontSize: 24),
                ),
                onLongPress: () {
                  print('Long Press');
                },
                onPressed: () {
                  print('Resend Email');
                },
                child: Text('Resend')),
            body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 2),
                 // borderRadius: BorderRadius.circular(10),
                  borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                //shape: BoxShape.circle
              ),
              child: Text('Hello'),
              alignment: Alignment.center,
            ),
            Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500
                        )
                  ),
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onLongPress: () {
                    print('Email Deleted');
                  },
                  onPressed: () {
                    print('Email Has been Sent');
                  },
                  child: Text('Send Email')),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            OutlinedButton(
                onLongPress: () {
                  print('Long press on outline button');
                },
                onPressed: () {},
                child: Text('Outline button')),
            //input
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  fillColor: Colors.purple,
                  filled: true,
                  hintText: 'Enter your email addres',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.white70,
                  ),
                  label: Text('Email addres'),
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.purple,
                filled: true,
                hintText: 'Enter your password',
                hintStyle: TextStyle(
                  color: Colors.white70,
                ),
                suffixIcon: Icon(
                  Icons.password,
                  color: Colors.white70,
                ),
                label: Text('Password'),
                labelStyle: TextStyle(
                  color: Colors.white70,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
     ),
    );
  }
}

