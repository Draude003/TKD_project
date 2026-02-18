class Student {
  final String name;
  final String beltLevel;
  final String instructor;
  final String nextClass;
  final int classesAttended;
  final int totalClasses;
  final int progressScore;
  final String checkInTime;
  final List<String> alerts;

  const Student({
    required this.name,
    required this.beltLevel,
    required this.instructor,
    required this.nextClass,
    required this.classesAttended,
    required this.totalClasses,
    required this.progressScore,
    required this.checkInTime,
    required this.alerts,
  });

  String get classAttendanceSummary => '$classesAttended/$totalClasses';
  String get progressScoreLabel => '$progressScore%';
}

// Sample data
final sampleStudent = Student(
  name: 'Juan dela cruz',
  beltLevel: 'Green Belt',
  instructor: 'Benedick caber',
  nextClass: 'Today - 5:00 PM',
  classesAttended: 7,
  totalClasses: 8,
  progressScore: 82,
  checkInTime: '4:58 PM (FaceScan)',
  alerts: [
    'Belt exam sheduled for September 20',
    'New message from your coach',
  ],
);
