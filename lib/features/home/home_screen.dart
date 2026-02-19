import 'package:flutter/material.dart';
import '../../models/student.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/profile_card.dart';
import 'widgets/quick_actions_card.dart';
import 'widgets/recent_alerts_card.dart';
import 'widgets/status_today_card.dart';
import 'widgets/this_month_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // In a real app, this would come from a provider/bloc/etc.
  final Student _student = sampleStudent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('TKD Student App'),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none_rounded),
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
