import 'package:flutter/material.dart';

import '../../../../core/widgets/stat_ring.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00122E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting & Menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: Color(0xFF0A63F0),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Omar El Samahy",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Icon(Icons.menu, size: 32, color: Colors.white),
                ],
              ),

              const SizedBox(height: 24),

              // Date Selector
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    final dayNames = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
                    final dates = [6, 7, 8, 9, 10, 11, 12];
                    final isSelected = index == 4;

                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: isSelected ? Colors.white : Colors.white12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                            child: Column(
                              children: [
                                Text(
                                  dayNames[index],
                                  style: TextStyle(
                                    color: isSelected ? Colors.black : Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  dates[index].toString(),
                                  style: TextStyle(
                                    color: isSelected ? Colors.black : Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),

              // Step Count
              Center(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF0A63F0),
                              width: 6,
                            ),
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_walk, color: Colors.white, size: 28),
                            SizedBox(height: 4),
                            Text(
                              "5234",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Steps",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Stat Rings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StatRing(label: "KM", value: "12.4"),
                  StatRing(label: "Heart Rate", value: "92"),
                  StatRing(label: "CAL", value: "698"),
                ],
              ),

              const SizedBox(height: 24),

              // Dummy Line Chart
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Center(
                    child: Text(
                      "Line Chart Placeholder",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Nav
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        backgroundColor: const Color(0xFF001730),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: 'Fav'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box_outlined), label: 'Check'),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: 'Fav'),
        ],
      ),
    );
  }
}
