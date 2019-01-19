module QuotesHelper
  def remove_quote_mark(str)
    str.chomp('"').chomp('\'').chomp('').chomp('”').chomp('“').
        reverse.chomp('"').chomp('\'').chomp('').chomp('”').chomp('“')
        .reverse
  end

  def add_whitespace_to_long_string(str)
    str.split(/\s/).map do |word|
        word.gsub(/(.{25})/, '\1 ')
    end.join(" ")
  end
end
