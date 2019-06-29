/*
 Homework Assignment #1: Variables and Constants
 My favorite song
 */

let title: String = "Got It in You (Acoustic)"
let artist: String = "banner".uppercased()
let genre: String = "Alterenative"
let duration: (Int8, Int8) = (3, 40)
let album: String = title + " - Single"
let released: (Int8, String, Int16) = (28, "february", 2019)
let compositor: String = "Sarah Emily Berrios & Michael Nelson"
let copyright: String = "℗ 2019 Island Records, a division of UMG Recordings, Inc."
var liked: Bool = true

let (minutes, seconds) = duration
let (day, month, year) = released
var likedIndicator: Character = liked ? "❤️" : "💔";

print(title)
print(artist)
print(genre)
print("\(minutes):\(seconds)")
print(album)
print(day, month, year)
print(compositor)
print(copyright)
print(likedIndicator)

