import 'package:flutter/material.dart';
import 'profile_page.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.waving_hand_rounded,
                size: 80,
                color: Color(0xFFF2C3B9), 
              ),
              const SizedBox(height: 20),
              Text(
                'Hello There!',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Selamat datang di profil pribadiku.\nAyo kenalan lebih dekat!',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFFD6CBBF), 
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                child: const Text('Lihat Profilku'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(
                        nama: "Isma Fadhilatizzahra",
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}