import 'package:flutter/material.dart';
import '../components/calendar/calendar_day_picker.dart';
import '../components/calendar/calendar_event_card.dart';
import '../data/calendar_mock_data.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(20), child: HomePageContent()),
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Good Morning, User!",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xff12243d)),
          ),
          const Text(
            "Ready for your care tasks today.",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 25),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xff2f6df6),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Request Help',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "Upcoming Events",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff12243d)),
              ),
              const SizedBox(height: 16),
              const CalendarDayPicker(days: [], selectedIndex: 0), // uproszczony podgląd
              const SizedBox(height: 16),
              const CalendarEventCard(
                title: "Medication Plan",
                subtitle: "12:00 - 7:30 AM",
                timeLabel: "1:30 AM",
                category: "Urgent",
                accentColor: Colors.red,
              ),
              const SizedBox(height: 12),
              const CalendarEventCard(
                title: "Rehab Session",
                subtitle: "Physical Therapy - Dr. Soan",
                timeLabel: "4:00 PM",
                category: "Health",
                accentColor: Colors.blue,
              ),
              const SizedBox(height: 12),
              const Text(
                'Need support with daily tasks?\nSomeone can help you.',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Text(
                  'Find Help',
                  style: TextStyle(
                    color: Color(0xff2f6df6),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
