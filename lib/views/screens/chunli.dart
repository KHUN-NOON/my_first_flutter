import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  void handleNinjaLevel () {
    setState(() {
      ninjaLevel += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'Ninja ID Card'
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleNinjaLevel,
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add)
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://images.squarespace-cdn.com/content/v1/50f14d35e4b0d70ab5fc4f24/1408430895967-36OAFKE9U7IQ9QLSQ8G0/image-asset.gif'),
                radius: 40.0,
              )
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[900],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            const Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.yellowAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            Text(
              '$ninjaLevel',
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.yellowAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                const SizedBox(width: 10.0),
                Text(
                  'chunli@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    color: Colors.grey[400]
                  ),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
