Dir["lib/*.rb"].each {|file| require file }

story = File.read("intro.txt")
story_teller = StoryTeller.new(story)

puts story_teller.narrate