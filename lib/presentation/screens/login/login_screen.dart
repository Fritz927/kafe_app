import 'package:flutter/material.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Kafe App', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:const Center(
        child:  Column(
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('assets/Final.png')),
            ),
            SizedBox(height: 20,),
            Text('Bienvenid@', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Text('Los mejores cafés de Colombia', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Text('en un solo lugar', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}