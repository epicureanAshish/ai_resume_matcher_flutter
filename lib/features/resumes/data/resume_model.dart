class Resume {
  final String id;
  final String name;

  Resume({
    required this.id,
    required this.name,
  });

  factory Resume.fromJson(
      Map<String, dynamic> json,
      ) {
    return Resume(
      id: json['id'],
      name: json['name'],
    );
  }
}