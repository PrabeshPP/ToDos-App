import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right:8.0,bottom:24),
        child: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.note_add_rounded)),
      ),
      appBar: AppBar(
        title: const Text("ToDo"),
      ),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.teal, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.blueGrey.shade800,
                  child: const ListTile(
                    title: Text("Title of the work"),
                    subtitle: Text(
                        "I have to complete the work by tomorrow ,My name is prabesh bista,I am tikapur kailali."),
                  ),
                ),
              );
            }),
      )),
    );
  }
}
