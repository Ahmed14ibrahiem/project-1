class CalculateResult {
  final int userId;
  final int id;
  final String title;

  CalculateResult({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory CalculateResult.fromJson(Map<String, dynamic> json) {
    return CalculateResult(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
