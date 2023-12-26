import 'package:flutter/material.dart';
import 'form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // String dropdownValue = 'one';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Medico",

      home: RegForm(),


    );
  }
}

/* Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    //color: Colors.indigo,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    border: Border.all(color: Colors.grey, width: 1),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                       image:  AssetImage('assets/mudasir.jpg'),
                    ),
                     boxShadow: const [
                       BoxShadow(
                        color:  Colors.grey,
                        blurRadius: 90,
                      )
                    ]),
              ),
            ) */

/* Stack(
              children: [
                Container(
                  height: 100,
                  width: 99,
                  color: Colors.green,

                ),
                Positioned(
                    right: 100,
                    child: Text('Mudasir')),
                Container(
                  height: 100,
                  width: 66,
                  color: Colors.red,

                ),
                Container(
                  height: 100,
                  width: 33,
                  color: Colors.blue,
                ),
              ],
            ), */
