import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ingresar'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¡ Bienvenido de nuevo ! ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
           Padding(
            padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration:const InputDecoration(
                hintText: 'Correo',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                hintText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ),
          const Text(
            '¿ Olvido su contraseña ?',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const SizedBox(
              width: 300,
              child: Center(
                child: Text('Iniciar Sesión',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('¿No tienes cuenta?'),
               GestureDetector(
                 child:const Text(' Registrate',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15)
                    
                    ),
                    onDoubleTap:() => context.push('/register'),
               ),
            ],
          ),
             const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){},
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red, ),
                 child:const SizedBox(width:300 ,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.google, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Iniciar sesión con Google', style: TextStyle(color: Colors.white),)
                  ],
                 ),
                 )                 
                 
                 ),
                 const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){},
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, ),
                 child:const SizedBox(width:300 ,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.facebook, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Iniciar sesión con Facebook', style: TextStyle(color: Colors.white),)
                  ],
                 ),
                 )                 
                 
                 )

        ],
      )),
    );
  }
}
