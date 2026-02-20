import 'package:flutter/material.dart';
import '/models/progress_models.dart';
import 'widgets/skill_progress_card.dart';
import 'widgets/coach_notes_card.dart';
import 'widgets/readlines_card.dart';
import 'widgets/bottom_nav_bar.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  int _currentIndex = 1; // Progress tab is active by default

  // ── Static Data ────────────────────────────────────────────────────────────

  static const List<SkillProgress> _skills = [
    SkillProgress(name: 'Kicks', percentage: 0.78),
    SkillProgress(name: 'Forms', percentage: 0.81),
    SkillProgress(name: 'Sparring', percentage: 0.69),
    SkillProgress(name: 'Discipline', percentage: 0.73),
  ];

  static const CoachNote _coachNote = CoachNote(
    coachName: "Coach's Notes",
    avatarEmoji: '🧑‍🏫',
    updatedLabel: 'Master Kim Updated 2 days ago',
    note: 'Improve guard and balance',
  );

  static const ReadinessStatus _readiness = ReadinessStatus(
    percentage: 82,
    label: 'READY',
    statusText: 'On Track',
  );

  // ── Navigation Handler ─────────────────────────────────────────────────────

  void _onNavTap(int index) {
    if (index == _currentIndex) return;

    switch (index) {
      case 0:
        // Go back to Home — pop so HomeScreen stays in the stack
        Navigator.of(context).popUntil((route) => route.isFirst);
        break;
      case 1:
        // Already on Progress, do nothing
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
      backgroundColor: const Color(0xFFF2F2F7),
      body: Column(
        children: [
          // Dark Header
          Container(
            color: const Color(0xFF1C1C1E),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.maybePop(context),
                      child: const Row(
                        children: [
                          Icon(Icons.arrow_back, color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Progress',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
              child: Column(
                children: [
                  SkillProgressCard(skills: _skills),
                  const SizedBox(height: 16),
                  CoachNotesCard(coachNote: _coachNote),
                  const SizedBox(height: 16),
                  ReadinessCard(readiness: _readiness),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}
