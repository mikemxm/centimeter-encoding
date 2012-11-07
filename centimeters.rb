#!/usr/bin/ruby

def centimeter_encode (input_string)

	centimeter_string = "0."

	while (input_string.length > 0) do
		string_shift = input_string.slice!(0,1).capitalize
		encoded_digit_pair = case string_shift
			when 'A' then "01"
			when 'B' then "02"
			when 'C' then "03"
			when 'D' then "04"
			when 'E' then "05"
			when 'F' then "06"
			when 'G' then "07"
			when 'H' then "08"
			when 'I' then "09"
			when 'J' then "10"
			when 'K' then "11"
			when 'L' then "12"
			when 'M' then "13"
			when 'N' then "14"
			when 'O' then "15"
			when 'P' then "16"
			when 'Q' then "17"
			when 'R' then "18"
			when 'S' then "19"
			when 'T' then "20"
			when 'U' then "21"
			when 'V' then "22"
			when 'W' then "23"
			when 'X' then "24"
			when 'Y' then "25"
			when 'Z' then "26"
			else ''
		end
		# Uncomment following line to see per digit-pair conversion
		# puts string_shift + " => " + encoded_digit_pair
		centimeter_string << encoded_digit_pair
	end
	puts '"' + centimeter_string + " cm" + '"'
end

def centimeter_decode (input_string)

	english_string = ""

	while (input_string.length > 0) do
		string_shift = input_string.slice!(0,2)
		decoded_digit_pair = case string_shift
			when "01" then 'A'
			when "02" then 'B'
			when "03" then 'C'
			when "04" then 'D'
			when "05" then 'E'
			when "06" then 'F'
			when "07" then 'G'
			when "08" then 'H'
			when "09" then 'I'
			when "10" then 'J'
			when "11" then 'K'
			when "12" then 'L'
			when "13" then 'M'
			when "14" then 'N'
			when "15" then 'O'
			when "16" then 'P'
			when "17" then 'Q'
			when "18" then 'R'
			when "19" then 'S'
			when "20" then 'T'
			when "21" then 'U'
			when "22" then 'V'
			when "23" then 'W'
			when "24" then 'X'
			when "25" then 'Y'
			when "26" then 'Z'
			else ''
		end
		# Uncomment following line to see letter-by-letter conversion
		# puts string_shift + " => " + decoded_digit_pair
		english_string << decoded_digit_pair
	end
	puts '"' + english_string + '"'
end

# Usage: 
centimeter_encode "Everything that has ever been said can be encoded to a specific point on a centimeter ruler"
centimeter_decode "3.14159"

