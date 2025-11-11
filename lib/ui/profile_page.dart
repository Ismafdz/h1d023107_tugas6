import 'package:flutter/material.dart';

const String aboutMeText =
    "Aku tipe orang yang kreatif, analitis, dan suka berkolaborasi, terutama dalam tim yang punya visi besar.";
const String ambitionText =
    "Saat ini aku sedang mengasah kemampuan di bidang web development dan data science, karena aku ingin jadi engineer muda yang bisa menciptakan solusi cerdas untuk masa depan.";

class ProfilePage extends StatelessWidget {
  final String nama;

  const ProfilePage({Key? key, required this.nama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'), 
      ),
      body: SingleChildScrollView( 
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFF2C3B9), 
                    child: Icon(
                      Icons.spa_rounded, 
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    nama, 
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "H1D023107",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF97B3AE),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            _buildInfoCard(
              context,
              title: "About Me 🌿",
              content: aboutMeText,
              color: const Color(0xFFF0DDD6),
            ),
            const SizedBox(height: 20),

            _buildInfoCard(
              context,
              title: "My Ambition 🚀",
              content: ambitionText,
              color: const Color(0xFFF2C3B9),
            ),
            const SizedBox(height: 20),

            Text(
              "My Info ✨",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Card(
              child: Column(
                children: [
                  _buildInfoTile(
                    icon: Icons.cake_rounded,
                    title: "Tahun Lahir",
                    subtitle: "2006",
                  ),
                  _buildInfoTile(
                    icon: Icons.hourglass_bottom_rounded,
                    title: "Umur",
                    subtitle: "19 Tahun",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context,
      {required String title, required String content, required Color color}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTile({required IconData icon, required String title, required String subtitle}) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color(0xFF97B3AE),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 16)),
    );
  }
}