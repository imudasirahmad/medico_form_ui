import 'package:flutter/material.dart';

import 'done.dart';

class RegForm extends StatefulWidget {
   RegForm({Key? key}) : super(key: key);

  @override
  State<RegForm> createState() => _RegFormState();
}
class _RegFormState extends State<RegForm> {

  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final genderController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Medico Consultation',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "Consultation ",
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: nameController,

                keyboardType: TextInputType.text,
                cursorColor: Colors.blue,
                style: const TextStyle(fontSize: 12, color: Colors.green),
                decoration: InputDecoration(
                  // hintText: 'Ahmad',
                  labelText: 'Name',
                  labelStyle: const TextStyle(
                    color: Colors.green,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  fillColor: const Color(0xffebf7ef),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: numberController,
                keyboardType: TextInputType.phone,
                cursorColor: Colors.blue,
                style: const TextStyle(fontSize: 12, color: Colors.green),
                decoration: InputDecoration(
                  labelText: 'Contact Number',
                  labelStyle: const TextStyle(
                    color: Colors.green,
                  ),
                  fillColor: const Color(0xffebf7ef),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: genderController,
                keyboardType: TextInputType.text,
                cursorColor: Colors.blue,
                style: const TextStyle(fontSize: 12, color: Colors.green),
                decoration: InputDecoration(
                  // hintText: 'Ahmad',
                  labelText: 'Gender',
                  labelStyle: const TextStyle(
                    color: Colors.green,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  fillColor: const Color(0xffebf7ef),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.blue,
                style: const TextStyle(fontSize: 12, color: Colors.green),
                decoration: InputDecoration(
                  // hintText: 'Ahmad',
                  labelText: 'Describe Your Issue',
                  labelStyle: const TextStyle(
                    color: Colors.green,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  fillColor: const Color(0xffebf7ef),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            // DropdownButton(
            //   items: const [
            //     DropdownMenuItem(value: "Male",child: Text('Male') ,),
            //     DropdownMenuItem(value: "Female",child: Text('Female') ,),
            //   ],
            //
            //   onChanged: null,
            //
            // ),

            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, ),

                  onPressed: ()async{
                    String name = nameController.text;
                    String number = numberController.text;
                    String gender = genderController.text;


                    if( name != '' && number != '' && gender != '')
                   {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Done()));
                    }

                  },


                  child: Text('Proceed')),
            )

            /* const ListTile(
              leading: CircleAvatar(
                //radius: 10,
                // child: Icon(Icons.person),
                backgroundImage: NetworkImage(9
                    'https://scontent.fmux1-1.fna.fbcdn.net/v/t39.30808-6/355251403_1265392967682570_3611814054233733301_n.jpg?_nc_cat=103&cb=99be929b-59f725be&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeE5NJ9ltwxDYXaNt-7T9JdFq_ApNB5xTFur8Ck0HnFMW6kB72QghUylx6EVYelZs7tGWpSEHe32B2uIlPJEl92g&_nc_ohc=GzV_v1kgnOQAX-vhaR5&_nc_ht=scontent.fmux1-1.fna&oh=00_AfALQZp8TVaZY2PI0585AuqlPk-f-zDvCyzYtXsyNqdkzg&oe=64BBE291'),
              ),
              title: Text('Founder'),
              subtitle: Text('Mudasir Ahmad khan'),
              trailing: Text('online'),
            ), */
          ],
        ),
      ),
    );
  }
}
