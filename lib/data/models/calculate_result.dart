class CalculateResult {
  late String result;
  CalculateResult({required this.result});
  CalculateResult.fromJson(Map<String, dynamic> json) {
    result = json['quote'];
  }
}
