import 'package:flutter/material.dart';

class CalendarEventData {
  const CalendarEventData({
    required this.title,
    required this.subtitle,
    required this.timeLabel,
    required this.category,
    required this.accentColor,
  });

  final String title;
  final String subtitle;
  final String timeLabel;
  final String category;
  final Color accentColor;
}

const List<String> calendarFilters = [
  'All',
  'Medications',
  'Rehab',
  'Doctor',
  'Meals',
];

const List<List<CalendarEventData>> calendarMockEventsByDay = [
  [
    CalendarEventData(
      title: 'Morning Medication',
      subtitle: 'Take blood pressure tablets with breakfast.',
      timeLabel: '08:00 - 08:15',
      category: 'Medications',
      accentColor: Color(0xff2f6df6),
    ),
    CalendarEventData(
      title: 'Mobility Rehab',
      subtitle: 'Stretching and balance exercises with therapist.',
      timeLabel: '11:30 - 12:15',
      category: 'Rehab',
      accentColor: Color(0xff14b8a6),
    ),
  ],
  [
    CalendarEventData(
      title: 'Doctor Follow-up',
      subtitle: 'Short consultation about recovery progress.',
      timeLabel: '10:00 - 10:45',
      category: 'Doctor',
      accentColor: Color(0xff8b5cf6),
    ),
  ],
  [
    CalendarEventData(
      title: 'Lunch Reminder',
      subtitle: 'Prepare a lighter meal and drink water.',
      timeLabel: '13:00 - 13:30',
      category: 'Meals',
      accentColor: Color(0xfff59e0b),
    ),
    CalendarEventData(
      title: 'Evening Medication',
      subtitle: 'Second dose after dinner.',
      timeLabel: '19:00 - 19:10',
      category: 'Medications',
      accentColor: Color(0xffef4444),
    ),
  ],
  [
    CalendarEventData(
      title: 'Home Rehab Session',
      subtitle: '20 minutes of supervised movement training.',
      timeLabel: '09:00 - 09:20',
      category: 'Rehab',
      accentColor: Color(0xff06b6d4),
    ),
  ],
  [
    CalendarEventData(
      title: 'Caregiver Visit',
      subtitle: 'Weekly home visit and checklist review.',
      timeLabel: '14:00 - 15:00',
      category: 'Doctor',
      accentColor: Color(0xff6366f1),
    ),
  ],
  [
    CalendarEventData(
      title: 'Breakfast Prep',
      subtitle: 'Prepare ingredients and organize supplements.',
      timeLabel: '08:30 - 09:00',
      category: 'Meals',
      accentColor: Color(0xfff97316),
    ),
  ],
  [
    CalendarEventData(
      title: 'Medication Refill Check',
      subtitle: 'Review remaining medication for next week.',
      timeLabel: '17:30 - 17:45',
      category: 'Medications',
      accentColor: Color(0xff0f766e),
    ),
  ],
];