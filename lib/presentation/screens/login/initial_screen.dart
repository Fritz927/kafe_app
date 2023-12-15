import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Kafe App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/Final.png')),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '¡ Bienvenid@ !',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Los mejores cafés de Colombia',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'en un solo lugar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: const SizedBox(
                  width: 300,
                  child: Center(
                    child: Text('Iniciar Sesión',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                ),
                onPressed: () => context.push('/login'),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const SizedBox(
                  width: 300,
                  child: Center(
                    child: Text('Registrarse',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                ),
                onPressed: () => context.push('/register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
