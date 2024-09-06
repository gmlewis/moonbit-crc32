/// This file is based on the Go implementation found here:
/// https://cs.opensource.google/go/go/+/refs/tags/go1.23.0:src/hash/crc32/crc32_test.go
/// which has the copyright notice:
/// Copyright 2009 The Go Authors. All rights reserved.
/// Use of this source code is governed by a BSD-style
/// license that can be found in the LICENSE file.

let golden = [
  ("414fa339", b"The quick brown fox jumps over the lazy dog"),
  ("00000000", b""),
  ("e8b7be43", b"a"),
  ("9e83486d", b"ab"),
  ("352441c2", b"abc"),
  ("ed82cd11", b"abcd"),
  ("8587d865", b"abcde"),
  ("4b8e39ef", b"abcdef"),
  ("312a6aa6", b"abcdefg"),
  ("aeef2a50", b"abcdefgh"),
  ("8da988af", b"abcdefghi"),
  ("3981703a", b"abcdefghij"),
  ("6b9cdfe7", b"Discard medicine more than two years old."),
  ("c90ef73f", b"He who has a shady past knows that nice guys finish last."),
  ("b902341f", b"I wouldn't marry him with a ten foot pole."),
  ("042080e8", b"Free! Free!/A trip/to Mars/for 900/empty jars/Burma Shave"),
  ("154c6d11", b"The days of the digital watch are numbered.  -Tom Stoppard"),
  ("4c418325", b"Nepal premier won't resign."),
  (
    "33955150", b"For every action there is an equal and opposite government program.",
  ),
  ("26216a4b", b"His money is twice tainted: 'taint yours and 'taint mine."),
  (
    "1abbe45e", b"There is no reason for any individual to have a computer in their home. -Ken Olsen, 1977",
  ),
  (
    "c89a94f7", b"It's a tiny change to the code and not completely disgusting. - Bob Manchek",
  ),
  ("ab3abe14", b"size:  a.out:  bad magic"),
  ("bab102b6", b"The major problem is with sendmail.  -Mark Horton"),
  (
    "999149d7", b"Give me a rock, paper and scissors and I will move the world.  CCFestoon",
  ),
  ("6d52a33c", b"If the enemy is within range, then so are you."),
  (
    "90631e8d", b"It's well we cannot hear the screams/That we create in others' dreams.",
  ),
  (
    "78309130", b"You remind me of a TV show, but that's all right: I watch it anyway.",
  ),
  ("7d0a377f", b"C is as portable as Stonehedge!!"),
  (
    "8c79fd79", b"Even if I could be Shakespeare, I think I should still choose to be Faraday. - A. Huxley",
  ),
  (
    "a20b7167", b"The fugacity of a constituent in a mixture of gases at a given temperature is proportional to its mole fraction.  Lewis-Randall Rule",
  ),
  ("8e0bb443", b"How can you write a big system without C++?  -Paul Glick"),
]

test "crc32 functions correctly" {
  for pair in golden {
    let sum = @crc32.Digest::new()
    for b in pair.1 {
      sum.write(b)
    }
    let got = sum.check_sum()
    assert_eq!(got, pair.0)
  }
}
