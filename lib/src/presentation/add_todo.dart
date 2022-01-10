import 'package:flutter/material.dart';

class AddToDo extends StatelessWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: 
        SafeArea(
          child: Container(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
               const  Padding(
                  padding:  EdgeInsets.only(top: 25.0,left: 12.0,right: 12.0),
                  child:  TextField(
                  
                   textAlign: TextAlign.start,
                    cursorColor: Colors.red,
                    cursorHeight: 35,
                  style: TextStyle(
                    fontSize: 28,
                        fontWeight: FontWeight.bold

                  ),
                    decoration:  InputDecoration(
                    
                      
                      hintStyle: TextStyle(
                      
                        height: 0.0,
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),
                      hintText:"Title"
                    ),
                  ),
                ),
                const  Padding(
                  padding:  EdgeInsets.only(top: 25.0,left: 12.0,right: 12.0),
                  child:  TextField(
                    maxLines: 7,
                   textAlign: TextAlign.start,
                    cursorColor: Colors.red,
                    cursorHeight: 25,
                  style: TextStyle(
                    fontSize: 20.0,
                        fontWeight: FontWeight.normal

                  ),
                    decoration:  InputDecoration(
                    
                      
                      hintStyle: TextStyle(
                      
                        height: 0.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal
                      ),
                      hintText:"Add a note"
                    ),
                  ),
                ),
                
              ]
            ),
          ),
        ),
      
    );
  }
}
