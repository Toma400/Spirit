#=============================================================================
# SPIRIT
# v.0.1.
VER = 0.1.0.
#=============================================================================
# ANALYSIS:
def file_analyser(file)
  contents = file.readlines.map(&:chomp)
  commands = []
  puts "==============================="
  for i in contents
    puts i
    commands << i.chomp
  end
  puts "Printing the command array:: [#{commands}]"
  puts "==============================="

end
#=============================================================================
# ERRORS:
def wrong_path
  puts "==============================="
  puts "Analysis failed! Prompted path is not correct .sp or .sr file!"
  exit!
end
#=============================================================================
# READER:
def prompt_reader(prompt)
  puts "==============================="
  puts "Analysing:: [#{prompt.chomp}]"
  if prompt.chomp.include? ".sp" or prompt.chomp.include? ".sr"
    begin
      file = File.open(prompt.chomp)
      file_analyser(file)
      file.close
    rescue
      wrong_path
    end
  else
    wrong_path
  end
end

#=============================================================================
# MAIN LOOP:
while true
  print ">> "
  prompt = gets

  if prompt.chomp == "end"
    exit!
  elsif prompt.chomp == "ver"
    puts "Sp>rit version:: #{VER}"
  else
    prompt_reader(prompt)
  end
end
