/*
 
 Homework Assignment #1: Variables and Constants
 My favorite song
 
 */

// Constants declaration

let title: String = "Got It in You (Acoustic)"
let artist: String = "banner".uppercased() // Use of string function
let genre: String = "Alterenative"
let (minutes, seconds): (Int8, Int8) = (3, 40)
let duration: String = "\(minutes):\(seconds)" // Use of string interpolation
let album: String = title + " - Single" // String concatenation
let (day, month, year): (Int8, String, Int) = (28, "february", 2019)
let compositor: String = "Sarah Emily Berrios & Michael Nelson"
let copyright: String = "℗ 2019 Island Records, a division of UMG Recordings, Inc."

// Variables declaration

var liked: Bool = true
var likedIndicator: Character = liked ? "❤️" : "💔";

// Print variables into console

print(title)
print(artist)
print(genre)
print(duration)
print(album)
print(day, month, year)
print(compositor)
print(copyright)
print(likedIndicator)
