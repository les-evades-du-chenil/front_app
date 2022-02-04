import 'package:flutter/material.dart';

class CardWithImage extends StatelessWidget {
  const CardWithImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1643952565578-a39d383f1dc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2671&q=80'),
          Container(
            margin: const EdgeInsets.only(bottom: 6.0, left: 6.0),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(6.0),
            child: Text('Desert', style: Theme.of(context).textTheme.headline2),
          ),
        ],
      ),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    );
  }
}
