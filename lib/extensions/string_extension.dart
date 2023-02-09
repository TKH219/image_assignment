extension StringExtension on String {
  String get getInitials => isNotEmpty ? trim().split(' ').map((l) => l[0]).take(2).join() : '';
}
