import 'package:flutter_job_finder_app/model/job.dart';

/// Job list
class JobList {
  static final Job googleJob1 = Job("Google LLC", "Network Engineer", "Mountain View, CA", "google.png");
  static final Job googleJob2 = Job("Google LLC", "Frontend Developer", "Mountain View, CA", "google.png");

  static final Job microsoftJob = Job("Microsoft Corporation", "Software Developer", "Bellevue, WA", "microsoft.png");

  static final Job spotifyJob = Job("Spotify Technology SA", "Full Stack Engineer", "NY or Remote", "spotify.png");

  static final Job teslaJob = Job("Tesla, Inc.", "Sr Network Engineer", "Palo Alto, CA", "tesla.png");

  static final Job twitterJob = Job("Twitter", "Backend Engineer", "Remote US", "twitter.png");
}
