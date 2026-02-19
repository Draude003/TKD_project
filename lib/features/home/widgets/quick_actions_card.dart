import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';
import '../../../features/home/quick_attendance_screen.dart'; 
import 'section_card.dart';

class QuickAction {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const QuickAction({
    required this.icon,
    required this.label,
    this.onTap,
  });
}

class QuickActionsCard extends StatelessWidget {
  const QuickActionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<QuickAction> actions = [
      QuickAction(
        icon: Icons.people_alt_outlined,
        label: 'Attendance',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const AttendanceScreen()),
        ),
      ),
      QuickAction(icon: Icons.credit_card_outlined, label: 'Billing'),
      QuickAction(icon: Icons.workspace_premium_outlined, label: 'Certificates'),
      QuickAction(icon: Icons.chat_bubble_outline_rounded, label: 'Chat'),
    ];

    return SectionCard(
      label: '⚡ Quick Actions',
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 2.2,
        children: actions.map((action) => _ActionTile(action: action)).toList(),
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  final QuickAction action;

  const _ActionTile({required this.action});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.tileBackground,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: action.onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppTheme.tileBorder),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(action.icon, size: 22, color: Colors.black87),
              const SizedBox(width: 8),
              Text(
                action.label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}