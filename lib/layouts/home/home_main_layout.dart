import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:farhan_praktikum2/components/news_card.dart';

class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Border color
          width: 1.0, // Border width
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8f17c4fe95b3138d/60da8a2ac5c41538a1502080/1c0519ff1f741a29186c40bb0e605d79da8d443d.jpg?auto=webp&format=pjpg&width=1200&quality=60',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            const SizedBox(height: 8),
            Text(
              'Costa Mendekat Ke Palmerias',
              style: GoogleFonts.plusJakartaSans(fontSize: 21),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.purple),
              child: const Text("Transfer"),
            ),
            const SizedBox(height: 8),
            Column(
              children: List.generate(
                10,
                (index) => const NewsCard(
                  title: "Chelsea kemungkinan besar harus bermain tanpa striker bintang mereka akhir pekan depan",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
