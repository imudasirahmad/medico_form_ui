import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,


            children: [



              Center(
                child: Text("Registration Done" , style: TextStyle(fontSize: 30 , color: Colors.green),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("You will get Details through Whatsapp "))
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
