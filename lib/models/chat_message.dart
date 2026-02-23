class ChatMessage {
  final String id;
  final String senderName;
  final String lastMessage;
  final String time;
  final String avatarInitial;
  final bool isYou;

  const ChatMessage({
    required this.id,
    required this.senderName,
    required this.lastMessage,
    required this.time,
    this.avatarInitial = '',
    this.isYou = false,
  });
}

final List<ChatMessage> dummyMessages = [
  ChatMessage(
    id: '1',
    senderName: 'Master Kim (Coach)',
    lastMessage: 'Practice kicks daily',
    time: '2:30 PM',
    avatarInitial: 'M',
  ),
  ChatMessage(
    id: '2',
    senderName: 'Admin Office',
    lastMessage: 'Your next payment is due on...',
    time: 'Yesterday',
    avatarInitial: 'A',
  ),
  ChatMessage(
    id: '3',
    senderName: 'Competition team Group',
    lastMessage: 'Goodluck everyone!',
    time: 'Monday',
    avatarInitial: 'C',
    isYou: true,
  ),
   ChatMessage(
    id: '3',
    senderName: 'Maria dela cruz',
    lastMessage: 'goodluck nak!',
    time: 'Yesterday',
    avatarInitial: 'M',
    isYou: true,
  ),
  ChatMessage(
    id: '4',
    senderName: 'aria dela cruz',
    lastMessage: 'goodluck!',
    time: 'Yesterday',
    avatarInitial: 'A',
    isYou: true,
  ),
];
