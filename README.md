centimeter-encoding
===================

Encodes strings to a value between 0 and 1 centimeters (ref: http://www.smbc-comics.com/index.php?db=comics&amp;id=2787#comic)

A = 01, B = 02, ... Z = 26

Spaces and punctuation are ignored

Also can decode a number to english, ignoring digit pairs higher than 26

So far no hidden messages found from God in the first 10,000 digits of e or pi.

Usage
=====
 centimeter_encode "Everything that has ever been said can be encoded to a specific point on a centimeter ruler"
=> "0.052205182520080914072008012008011905220518020505141901090403011402050514031504050420150119160503090609031615091420151401030514200913052005181821120518 cm"

 # First digit pair is taken as "3." and thus is ignored, total string length is an odd number so final digit gets dropped
 centimeter_decode "3.14159"
=> "NO"