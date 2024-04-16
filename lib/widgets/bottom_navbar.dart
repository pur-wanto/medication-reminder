import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medication_reminder/pages/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override

  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(), // Gantikan dengan halaman nyata Anda
    const LikesScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: GNav(
        rippleColor: Colors.transparent,
        hoverColor: Colors.transparent,
        gap: 8,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.transparent,
        color: const Color(0xFF8863E4),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.heart_broken,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.message,
            text: 'Chat',
          ),
          GButton(
            icon: Icons.man,
            text: 'Profile',
          ),
        ],
        selectedIndex: selectedIndex,
        onTabChange: (index) {
          setState(() {
            selectedIndex = index; // Memperbarui selectedIndex
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Likes"));
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Chat"));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Profile"));
  }
}
