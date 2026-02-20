import 'package:flutter/material.dart';
import '../../models/student_model.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/profile_card.dart';
import 'widgets/quick_actions_card.dart';
import 'widgets/recent_alerts_card.dart';
import 'widgets/status_today_card.dart';
import 'widgets/this_month_card.dart';
import '../progress/progress_screen.dart'; // 👈 import Progress screen

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // In a real app, this would come from a provider/bloc/etc.
  final Student _student = sampleStudent;

  // ── Navigation Handler ─────────────────────────────────────────────────────

  void _onNavTap(int index) {
    if (index == _currentIndex) return;

    switch (index) {
      case 0:
        // Already on Home, do nothing
        break;
      case 1:
        // Navigate to Progress screen
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const ProgressScreen()));
        break;
      default:
        // Placeholder for Chat, Announcement, Account
        setState(() => _currentIndex = index);
    }
  }

  // ── Build ──────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        'TKD Student App',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            'Good morning, ${_student.name.split(' ').first}',
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ProfileCard(student: _student),
          const SizedBox(height: 16),
          StatusTodayCard(checkInTime: _student.checkInTime),
          const SizedBox(height: 16),
          const QuickActionsCard(),
          const SizedBox(height: 16),
          ThisMonthCard(student: _student),
          const SizedBox(height: 16),
          RecentAlertsCard(alerts: _student.alerts),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
