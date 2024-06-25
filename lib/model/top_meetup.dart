
class TopMeetup {
  final String title;
  final String image;
  final String actor;
  final String duration;
  final String fees;
  final double rating;
  final int likes;

  TopMeetup({
    required this.title,
    required this.image,
    required this.actor,
    required this.duration,
    required this.fees,
    required this.rating,
    required this.likes,
  });

  factory TopMeetup.fromJson(Map<String, dynamic> json) {
    return TopMeetup(
      title: json['title'],
      image: json['image'],
      actor: json['actor'],
      duration: json['duration'],
      fees: json['fees'],
      rating: json['rating'],
      likes: json['likes'],
    );
  }
}
