$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'yaml'
Dir["lib/*.rb"].each {|file| require file }
story = YAML.load File.read("story.yaml")
#story = [{:text => "This is a story"}, {:text => "All about how\nmy life got flip turned upside down"}] #File.read("intro.txt")
story_teller = StoryTeller.new(story)

story_teller.story_line.each do |line|
  puts line
  story_teller.paginate
end