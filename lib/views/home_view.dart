import 'package:famlicious/views/chats_view.dart';
import 'package:famlicious/views/favorites_view.dart';
import 'package:famlicious/views/profile_view.dart';
import 'package:famlicious/views/timeline_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          TimeLineView(),
          ChatsView(),
          FavoritesView(),
          ProfileView()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 35),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(UniconsSolid.clock_three),
            label: "Tasks",
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsSolid.comment_dots),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_fill), label: "Profile")
        ],
      ),
    );
  }
}
