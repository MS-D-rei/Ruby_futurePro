# ruby regexp_2.rb

text = <<TEXT
<select name="game_console">
<option value="none"></option>
<option value="pc" selected>PC</option>
<option value="ps5">PS5</option>
<option value="switch">Switch</option>
TEXT

p text.scan(/<option value="[a-z0-9_]+">.+<\/option>/) # => ["<option value=\"ps5\">PS5</option>", "<option value=\"switch\">Switch</option>"]
p text.scan(/<option value="([a-z0-9_]+)">(.+)<\/option>/) # => () make matches, [["ps5", "PS5"], ["switch", "Switch"]]
p text.scan(/<option value="([a-z0-9_]+)">(.*)<\/option>/) # => * means 0 or 1 or more, [["none", ""], ["ps5", "PS5"], ["switch", "Switch"]]
p text.scan(/<option value="([a-z0-9_]+)"( selected)?>(.*)<\/option>/) # => [["none", nil, ""], ["pc", " selected", "PC"], ["ps5", nil, "PS5"], ["switch", nil, "Switch"]]
p text.scan(/<option value="([a-z0-9_]+)"(?: selected)?>(.*)<\/option>/) # => [["none", ""], ["pc", "PC"], ["ps5", "PS5"], ["switch", "Switch"]]
p text.scan(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/) # \w includes a-z, 0-9, A-Z
p text.scan(/<option value="(\w+)"(?: selected)?>([^<]*)<\/option>/) # how to input ^ => shift + 6, ˆ< means except for <