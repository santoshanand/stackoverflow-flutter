class Project {
  final int id;
  final String title;
  final String description;
  final String deadline;
  final String subject;
  final String days_left;
  final List<dynamic> users;

  Project(
    this.id,
    this.title,
    this.description,
    this.deadline,
    this.subject,
    this.days_left,
    this.users,
  );
}

class User {
  final String username;
  final String fullname;
  User(this.username, this.fullname);
}
