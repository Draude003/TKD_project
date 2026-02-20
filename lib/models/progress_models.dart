import 'package:flutter/material.dart';

class NavItem {
  final IconData icon;
  final String label;

  const NavItem({required this.icon, required this.label});
}

class SkillProgress {
  final String name;
  final double percentage; // 0.0 to 1.0

  const SkillProgress({required this.name, required this.percentage});
}

class CoachNote {
  final String coachName;
  final String avatarEmoji;
  final String updatedLabel;
  final String note;

  const CoachNote({
    required this.coachName,
    required this.avatarEmoji,
    required this.updatedLabel,
    required this.note,
  });
}

class ReadinessStatus {
  final int percentage;
  final String label;
  final String statusText;

  const ReadinessStatus({
    required this.percentage,
    required this.label,
    required this.statusText,
  });
}
