import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medimate/Views/home_screen/home_screen.dart';
import 'package:medimate/Views/notification/notification_screen.dart';
import 'package:medimate/Views/profile%20screen/profile_screen.dart';
import 'package:medimate/Views/reports%20screen/reports_screen.dart';
import 'package:medimate/controllers/bottom_navigation/bottom_navigation_bloc.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    ReportsScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  final List<Map<String, dynamic>> items = [
    {"title": "Home", "icon": "assets/Home.svg"},
    {"title": "Reports", "icon": "assets/Group 176.svg"},
    {"title": "Notifications", "icon": "assets/Vector.svg"},
    {"title": "Profile", "icon": "assets/Profile.svg"},
  ];
  @override
  Widget build(BuildContext context) {
    var Size(:width, :height) = MediaQuery.sizeOf(context);
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      bloc: context.watch<BottomNavigationBloc>(),
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(-2, 2),
                  blurRadius: 2,
                ),
              ],
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                bool isSelested = index == state.index;
                return Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.06,
                    right: width * 0.06,
                  ),
                  child: GestureDetector(
                    onTap: () => context.read<BottomNavigationBloc>().add(BottomNavigationEvent(index: index)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 3,
                      children: [
                        SvgPicture.asset(
                          items[index]["icon"],
                          theme: SvgTheme(),
                          color:  isSelested ? Colors.blue : Colors.black54,
                          colorFilter: isSelested?ColorFilter.mode(Colors.blue, BlendMode.srcIn):ColorFilter.mode(Colors.black54, BlendMode.srcIn),
                        ),
                        Text(
                          items[index]["title"],
                          style: TextStyle(
                            color: isSelested ? Colors.blue : Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          body: _screens[state.index],
        );
      },
    );
  }
}
