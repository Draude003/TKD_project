  import 'package:flutter/material.dart';

class AccountItem {
  final String title;
  final String subtitle;
  final String icon;


  const AccountItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  
  });
}

class PreferenceItem {
  final String title;
  final String subtitle;
  final String icon;


  const PreferenceItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    
  });
}

final List<AccountItem> accountItems = [
  AccountItem(icon: 'assets/icons/profile.png', title: 'Profile Information', subtitle: 'Name, age, contact details'),
  AccountItem(icon: 'assets/icons/link.png', title: 'Linked Parent', subtitle: 'Maria Dela Cruz'),
  AccountItem(icon: 'assets/icons/security.png', title: 'Security & PIN', subtitle: 'Manage password and PIN'),
  AccountItem(icon: 'assets/icons/face_scan.png', title: 'Face Recognition', subtitle: 'Biometric authentication'),
];

final List<PreferenceItem> preferenceItems = [
 PreferenceItem(icon: 'assets/icons/notifications.png', title: 'Notifications', subtitle: 'Push & email alerts'),
  PreferenceItem(icon: 'assets/icons/dark_mode.png', title: 'Dark Mode', subtitle: 'Appearance theme'),
];