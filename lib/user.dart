class User {
  int id;
  String? image;
  String name;
  String address;
  int followers;
  int following;

  User(
      {required this.id,
      this.image,
      required this.name,
      this.address = "",
      this.followers = 0,
      this.following = 0});
}

extension StringsExt on String {
  String get initials {
    // Split the string by spaces
    List<String> words = trim().split(' ');

    // Check if there are any words in the list
    if (words.isEmpty) return '';

    // Take the first letter of each word and capitalize it
    String initials = words.map((word) => word[0].toUpperCase()).join('.');

    // Return initials with dots
    return initials;
  }
}
