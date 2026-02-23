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
  final int age;
  final String program;
  final String branch;
  final String linkedParent;


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
    required this.age,
    required this.program,
    required this.branch,
    required this.linkedParent,
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
  totalClasses: 9,
  progressScore: 82,
  checkInTime: '4:58 PM (FaceScan)',
  alerts: [
    'Belt exam sheduled for September 20',
    'New message from your coach',
  ],
  age: 15,
  program: 'Junior Sparring',
  branch: 'TKD Main Dojang',
  linkedParent: 'Maria Dela Cruz',
);
