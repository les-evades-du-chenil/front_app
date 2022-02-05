import 'package:flutter/material.dart';
import 'package:front_les_evades/data/source/grpc_server/grpc_server_data_source.dart';
import 'package:front_les_evades/data/source/grpc_server/model/hello.pbgrpc.dart';

import 'widgets/card_with_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  String text = '';
  final GrpcServerDataSource datasource = GrpcServerDataSource();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _setText(String newText) {
    setState(() {
      text = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const CardWithImage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _incrementCounter();
          HelloReply res = await datasource.sendNameToHelloService('cho7');
          text = res.message;
          _setText(text);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
