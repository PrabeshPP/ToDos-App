import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.note_add_rounded)),
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
          itemCount: 5,itemBuilder: (context, index) {
          return const Card(
            color: Colors.white,
            child:  ListTile(
              title: Text("Title of the work"),
              subtitle: Text("I have to complete the work by tomorrow ,My name is prabesh bista,I am tikapur kailali."),
                   
              
            ),
          );
        }),
      )),
    );
  }
}
