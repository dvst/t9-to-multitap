#!/usr/bin/ruby

keyboard = { 1 => [1],
    2 => ['a', 'b', 'c'],
    3 => %w[ d e f   ],
    4 => %w[ g h i   ],
    5 => %w[ j k l   ],
    6 => %w[ m n o   ],
    7 => %w[ p q r s ],
    8 => %w[ t u v   ],
    9 => %w[ w x y z ],
    0 => [" "]
}

word = 'github dvst'
keyboard_numeric = Array.new
keyboard_multitap = Array.new

word.each_char do |chr|
  keyboard.each do |number,letters|
    if letters.include? chr
      keyboard_numeric.push(number)
      keyboard_multitap.push(letters[0])
    end
  end
end

print keyboard_numeric.to_s + "\n"
print keyboard_multitap.to_s + "\n"
