class PostData {
  const PostData({
    required this.id,
    required this.title,
  });
  final int id;
  final String title;

  factory PostData.fromJson(Map<String, dynamic> data) =>
      PostData(id: data['id'], title: data['title']);
}
