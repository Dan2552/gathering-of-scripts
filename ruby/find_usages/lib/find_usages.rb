#!/usr/bin/env ruby

require 'pry'

def files
  `find . -name '*'`.split("\n")
end

def find_usages_of(filepath, method_name, argument_count)
  file = File.read(filepath)

  regex_with_brackets = /#{method_name}\(#{arguments(argument_count)}\)/
  regex_without_brackets = /#{method_name} #{arguments(argument_count)}[\W|]/
  definition_with_brackets = /def #{regex_with_brackets}/
  definition_without_brackets = /def #{regex_without_brackets}/

  matches = line_number_for_match(file, regex_with_brackets)
  matches += line_number_for_match(file, regex_without_brackets)

  matches = matches.select { |e| !(e.first =~ definition_with_brackets) }
                   .select { |e| !(e.first =~ definition_without_brackets) }

  matches.map { |e| "#{filepath}:#{e.last + 1}" }
end

def arguments(count)
  count = count.to_i
  return nil if count == 0
  (["[\\S| ]+"] * count).join(",\\s?")
end

def line_number_for_match(contents, regex)
  contents.split("\n").map.with_index.select { |e,| e =~ regex }
end

files.each do |file|
  begin
    puts find_usages_of(file, ARGV[0], ARGV[1] || 0)
  rescue
  end
end
