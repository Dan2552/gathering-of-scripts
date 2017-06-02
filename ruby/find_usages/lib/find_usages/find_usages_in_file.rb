class FindUsagesInFile
  def self.in_directory(directory_path)
# `find . -name '*'`.split("\n")
  end

  def initialize(filepath)
    @file = File.read(filepath)
  end

  def find_usages_of(method_name, argument_count)
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

  private

  attr_reader :file
  private :file

  def arguments(count)
    count = count.to_i
    return nil if count == 0
    (["[\\S| ]+"] * count).join(",\\s?")
  end

  def line_number_for_match(contents, regex)
    contents.split("\n").map.with_index.select { |e,| e =~ regex }
  end
end
