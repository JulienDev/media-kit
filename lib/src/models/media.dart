/// This file is a part of media_kit (https://github.com/alexmercerind/media_kit).
///
/// Copyright © 2021 & onwards, Hitesh Kumar Saini <saini123hitesh@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
Map<String, Media> medias = {};

/// ## Media
/// A [Media] object to open inside a [Player] instance using [Player.open] method for playback.
///
/// ```dart
/// var media = Media('https://www.example.com/music.mp3');
/// ```
///
class Media {
  /// URI of the [Media].
  final String uri;

  /// Additional optional user data.
  final dynamic extras;

  /// ## Media
  /// A [Media] object to open inside a [Player] instance using [Player.open] method for playback.
  ///
  /// ```dart
  /// var media = Media('https://www.example.com/music.mp3');
  /// ```
  ///
  Media(
    this.uri, {
    this.extras,
  }) {
    medias[uri] = this;
  }

  @override
  bool operator ==(Object other) {
    if (other is Media) {
      return other.uri == uri;
    }
    return false;
  }

  @override
  int get hashCode => uri.hashCode;

  @override
  String toString() => 'Media($uri, extras: $extras)';
}