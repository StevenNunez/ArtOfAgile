$LOAD_PATH.unshift(File.dirname(__FILE__))

Dir["lib/*.rb"].each {|file| require file }

story = File.read("intro.txt")
story_teller = StoryTeller.new(story)

puts story_teller.narrate