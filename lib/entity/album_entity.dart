import 'dart:convert';
import 'package:http/http.dart' as http;

class Album {
  final String id;
  final String title;
  final String productUrl;
  final String mediaItemsCount;
  final String coverPhotoBaseUrl;
  final String coverPhotoMediaItemId;

  Album({
    required this.id,
    required this.title,
    required this.productUrl,
    required this.mediaItemsCount,
    required this.coverPhotoBaseUrl,
    required this.coverPhotoMediaItemId,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    print('xxx');
    print(json);
    return Album(
        id: json['id'] as String,
        title: json['title'] as String,
        productUrl: json['productUrl'] as String,
        mediaItemsCount: json['mediaItemsCount'] as String,
        coverPhotoBaseUrl: json['coverPhotoBaseUrl'] as String,
        coverPhotoMediaItemId: json['coverPhotoMediaItemId'] as String,
    );
  }

  // A function that converts a response body into a List<Album>.
  // List<Album> parseAlbums(String responseBody) {
  //   final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  //
  //   return parsed.map<Album>((json) => Album.fromJson(json)).toList();
  // }
  //
  // Future<List<Album>> fetchAlbums(http.Client client) async {
  //   final response = await client
  //       .get(Uri.parse('https://photoslibrary.googleapis.com/v1/albums'));
  //
  //   // Use the compute function to run parseAlbums in a separate isolate.
  //   return parseAlbums(response.body);
  // }
}