import 'package:flutter/material.dart';
class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              "employee",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24.0,
                fontWeight: FontWeight.bold), 
              ),
            Text(
              "table",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 174, 0),
                fontSize: 24.0,
                fontWeight: FontWeight.bold), 
              )
            

      ],),),
      body: Container(
        margin: const EdgeInsets.only(left:20.0,top:30.0, right:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
         const Text("Name",style: TextStyle(color:Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),),
         const SizedBox(height: 10.0,),
        Container(
          padding:  const EdgeInsets.only(left:10.0),
           decoration: BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child:  const TextField(
decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
         const SizedBox(height:20.0),
          const Text("Age",style: TextStyle(color:Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),),
         const SizedBox(height: 10.0,),
        Container(
          padding: const EdgeInsets.only(left:10.0),
           decoration: BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child: const TextField(
decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
        const SizedBox(height: 20.0),
         const Text("Location",style: TextStyle(color:Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10.0,),
        Container(
          padding: const EdgeInsets.only(left:10.0),
           decoration: BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child: const TextField(
decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
        const SizedBox(height: 30.0),
       Center(
       child:  ElevatedButton(onPressed:() {

       }, child:const Text("Add",style:TextStyle(fontSize:20.0,fontWeight:FontWeight.bold)) )
       )
      ],
        
      ),
      ),

    );
  }
}
 

