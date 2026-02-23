class Announcement {
  final String id;
  final String title;
  final String description;
  final String date;
  final String location;
  final String fee;

  const Announcement({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    this.location = '',
    this.fee = '',
  });
}

final List<Announcement> dummyAnnouncements = [
  Announcement(
    id: '1',
    title: 'Belt Exam Scheduled',
    description: 'Green to Blue Belt examination scheduled for September 20, 2025.',
    date: 'Sept 20, 2025',
    location: 'TKD Main Dojang',
    fee: '₱1,500',
  ),
  Announcement(
    id: '2',
    title: 'No Classes - Holiday',
    description: 'The TKD main will be closed on September 16-17 in observance of the national holiday.',
    date: 'Sept 20, 2025',
    location: 'TKD Main Dojang',
    fee: 'N/A',
  ),
  Announcement(
    id: '3',
    title: 'Competition Open',
    description: 'Registration is now open for the Regional Championship in October.',
    date: 'Sept 19, 2025',
    location: 'TBD',
    fee: '₱2,000',
  ),
   Announcement(
    id: '4',
    title: 'lulu competition',
    description: 'kukunin ni benedick james caber ang kampyeonato.',
    date: 'may 30, 2025',
    location: 'Bahay nila',
    fee: '₱150',
  ),
  Announcement(
    id: '5',
    title: 'Palarong Pambansa',
    description: 'The national sports competition is scheduled for May 30, 2025.',
    date: 'may 30, 2025',
    location: 'Davao City',
    fee: '₱2,000',
  ),
];