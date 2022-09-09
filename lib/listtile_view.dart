import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
 
String txt = '';
bool color =  false;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:50.0,),
              child: Container(
                color: Colors.blue[50],
                child: ListTile(
                  leading: const Icon(Icons.add),
                  title: const Text(
                    'GFG title',
                    textScaleFactor: 1.5,
                  ),
                  trailing: color ?  const Icon(Icons.favorite_border): const Icon(Icons.favorite),
                  subtitle: color == false ?  const Text('Favourite') :  const Text('Not Favourite'),
                  selected: true,
                  onTap: () {
                    setState(() {
                     color = !color;
                    });
                  },
                ),
              ),
            ),
          ),
          Text(
            txt,
            textScaleFactor: 2,
          )
        ],
    );
  }
}
