import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(240, 250, 245, 255),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              const Text(
                'Welcome Jatinder Cingur',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 30),
              const Text(
                'Scan the code to do followings:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    label: Text('Like'),
                    avatar: Icon(Icons.thumb_up, color: Colors.blue),
                  ),
                  Chip(
                    label: Text('Share'),
                    avatar: Icon(Icons.share_rounded, color: Colors.orange),
                  ),
                  Chip(
                    label: Text('Subscribe'),
                    avatar: Icon(Icons.subscriptions, color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.width - 100,
                child: Image.network(
                  'https://drive.google.com/uc?export=view&id=12Mynmqr9TNMONs63ToOM7fCXC-eDqgGG',
                ),
              ),
            ],
          ),
        ));
  }
}
