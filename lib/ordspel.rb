require "ordspel/version"
require "ordspel/regional"

module Ordspel
  module Language

  @@letter_o = "oóòŏôốồỗổǒöȫőõṍṏȭȯȱøǿǫǭōṓ̂ṑỏȍȏơớờỡởợọộɵｏꜵœꝏꝍȣ"
  @@letter_a = "aáàâǎăãảȧạåḁāąⱥȁấầẫẩậắằẵẳặǻǡǟȃɑɐａǽǣꜳꜵꜷꜹꜻ"
  @@letter_e = "eéèêḙěĕẽḛẻėëēȩęɇȅếềễểḝḗḕȇẹệｅæǽǣœ"
  @@consonants = "bcdfghjklmnpqrstvxz"
  @@vowels = "aeiouy"

  def swedify
    self.chars.map do |letter|
      case letter
        when /^[#{@@letter_o}]$/i
          letter = letter =~ /^[#{@@letter_o}]$/ ? "ö" : "Ö"
        when /^[#{@@letter_e}]$/i
          letter = letter =~ /^[#{@@letter_e}]$/ ? "ä" : "Ä"
        when /^[#{@@letter_a}]$/i
          letter = letter =~ /^[#{@@letter_a}]$/ ? "å" : "Å"
        when /^w$/i
          letter = letter =~ /^w$/ ? "w" : "W"
        else
          letter
      end
    end.join
  end

  def norwegify
    self.chars.map do |letter|
      case letter
        when /^[#{@@letter_o}]$/i
          letter = letter =~ /^[#{@@letter_o}]$/ ? "ø" : "Ø"
        when /^[#{@@letter_e}]$/i
          letter = letter =~ /^[#{@@letter_e}]$/ ? "æ" : "Æ"
        when /^[#{@@letter_a}]$/i
          letter = letter =~ /^[#{@@letter_a}]$/ ? "å" : "Å"
        when /^w$/i
          letter = letter =~ /^w$/ ? "w" : "W"
        else
          letter
      end
    end.join
  end

  alias_method :danify, :norwegify

  def spanify
    self.split(' ').map do |word|
      if word[-1] =~ /^[#{@@consonants}]$/
        word + "o"
      elsif word[-1] =~ /^\W$/
        rev_word = word.reverse
        consonant = rev_word.chars.detect do |letter|
          letter =~ /^[#{@@consonants}]$/
        end
        if consonant
          index = rev_word.index(consonant)
          rev_word[index] = 'o' + rev_word[index]
          word = rev_word.reverse
        end
        word
      else
        word
      end
    end.join(' ')
  end

  def frenchify
    self.gsub(/\bh/i,'').split(' ').join(' euhhh ') + " euhhh"
  end

  def chinify
    self.chars.map do |letter|
      if letter =~ /^[l]$/i
        letter = letter =~ /^[l]$/ ? "r" : "R"
      else
        letter
      end
    end.join
  end

  def japanify
    "You bring dishonor to whole family."
  end

  def germanify
    string = self.split(" ").map { |word| word.capitalize }.join(' ')
    #in case first letters of string are th
    string[0..1] = "Z" if string[0..1] =~ /^th$/i
    string = "JA Zo, " + string
    string = string.gsub(/\sth/i, ' Z')
    string.chars.map do |letter|
      if letter =~ /^[u]$/i
        letter = letter =~ /^[u]$/ ? "ü" : "Ü"
      else
        letter
      end
    end.join
  end

  def russify
    self.chars.map do |letter|
      if letter =~ /^[w]$/i
        letter = letter =~ /^[w]$/ ? "v" : "V"
      else
        letter
      end
    end.join
  end

  def dutchify
    self.chars.map do |letter|
      if letter =~ /^[s]$/i
        letter = letter =~ /^[s]$/ ? "sh" : "Sh"
      else
        letter
      end
    end.join
  end

  def irishify
    "What's the craic? " + self.gsub(/\bMy\b/, 'Me').gsub(/\bmy\b/i, 'me')
  end

  def portugify
    self.gsub(/ce\b/i, 'ção').chars.map do |letter|
      case letter
        when /^[#{@@letter_a}]$/i
          letter = letter =~ /^[#{@@letter_a}]$/ ? "ã" : "Ã"
        when /^[c]$/i
          letter = letter =~ /^[c]$/ ? "ç" : "Ç"
        else
          letter
      end
    end.join
  end

  def swissify
    self.frenchify.germanify
  end

  def welshify
    self.chars.map do |letter|
      if letter =~ /^[#{@@vowels}]$/i
          letter = letter =~ /^[#{@@vowels}]$/ ? "y" : "Y"
      else
        letter
      end
    end.join
  end

  def belgify
     self.dutchify.frenchify
  end

  def americanify
    self.split(" ").join(' like ')
  end

  def canadify
    word_list = ["eh", "sorry", "bud", "crosby", "hockey"]
    self.split(" ").map do |word|
      "#{word} #{word_list.sample}"
    end.join(' ')
  end
end
end

class String
  include Ordspel::Language
  include Ordspel::Regional
end



