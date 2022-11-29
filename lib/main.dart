import 'package:flutter/material.dart';

void main() => runApp(RutApp());

class RutApp extends StatelessWidget {
  const RutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        title: 'Rut Flet',
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 132, 243, 243),
            appBar: AppBar(title: const Text('Residence Blumar')),
            body: Builder(builder: (context) {
              return SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 50,
                  ),
                  const Text(
                      'Il Residence Blumar, costruito nel 2021, è situato a Jesolo Lido in una nuova zona turistico residenziale tranquilla ma nel contempo centrale rispetto a tantissime attrazioni come Caribe Bay, Golf Club, Pista Azzurra.',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Container(
                    height: 50,
                  ),
                  Image.network(
                      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/317559185.jpg?k=4e146d84d3ecac4e1f3ad5962806d02f25c1a091c3e9ca29aa26ecd09c92db18&o=&hp=1'),
                  Container(
                    height: 100,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        SnackBar snackBar = const SnackBar(
                            content: Text(
                                'Per maggiori infomrazioni scrivere a info@residenceblumar.it'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Text('Per Maggiori informazioni premere qui',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )))
                ]),
              );
            })));
  }
}
