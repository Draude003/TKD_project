import 'package:flutter/material.dart';
import '../../models/student_model.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/profile_card.dart';
import 'widgets/quick_actions_card.dart';
import 'widgets/recent_alerts_card.dart';
import 'widgets/status_today_card.dart';
import 'widgets/this_month_card.dart';
import '../progress/progress_screen.dart';
import '../chat/message_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onNavTap(int index) {
    if (index == _currentIndex) return;

    switch (index) {
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const ProgressScreen()))
            .then((_) => setState(() => _currentIndex = 0)); 
        setState(() => _currentIndex = 1);
        break;
      default:
        setState(() => _currentIndex = index);
    }

     switch (index) {
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const MessageScreen()))
            .then((_) => setState(() => _currentIndex = 0)); 
        setState(() => _currentIndex = 1);
        break;
      default:
        setState(() => _currentIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TKD Student App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }

  Widget _buildBody() {
    final student = sampleStudent;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            'Good morning, ${student.name.split(' ').first}',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ProfileCard(student: student),
          const SizedBox(height: 16),
          StatusTodayCard(checkInTime: student.checkInTime),
          const SizedBox(height: 16),
          const QuickActionsCard(),
          const SizedBox(height: 16),
          ThisMonthCard(student: student),
          const SizedBox(height: 16),
          RecentAlertsCard(alerts: student.alerts),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}