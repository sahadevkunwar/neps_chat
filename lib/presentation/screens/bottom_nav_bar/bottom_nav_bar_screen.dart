import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neps_chat/presentation/bloc/bottom_nav_bar_bloc/bottom_nav_bar_state.dart';
import 'package:neps_chat/presentation/screens/profile/profile_screen.dart';
import '../../../core/Themes/theme.dart';
import '../../bloc/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import '../../bloc/bottom_nav_bar_bloc/bottom_nav_bar_event.dart';
import '../home/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({
    super.key,
  });

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;
  DateTime? backButtonPressTime;

  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
        builder: (context, state) {
          switch (state) {
            case Page1():
              return const HomeScreen();
            case Page2():
              return Container(
                color: Colors.green,
              );
            case Page3():
              return Container(
                color: Colors.red,
              );
            case Page4():
              return const ProfileScreen();
            default:
              return const SizedBox();
          }
        },
      ),
      bottomNavigationBar: Container(
        height: 60,
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 20,
          right: 20,
        ),
        decoration: ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 2,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            showSelectedLabels: true,
            unselectedItemColor: secondaryColor,
            showUnselectedLabels: false,
            selectedItemColor: primaryColor,
            currentIndex: _selectedIndex,
            onTap: (currentIndex) {
              _selectedIndex = currentIndex;
              context
                  .read<BottomNavBarBloc>()
                  .add(FetchBottomNavBarEventEvent(id: currentIndex));
              (context as Element).markNeedsBuild();
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.create_new_folder_outlined),
                label: "Create Post",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: "Chat",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
