$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'test_helper'

class TestStoryFrame < Test::Unit::TestCase

  def test_initialize
    frame = StoryFrame({:question => "question1", :text => "text1",
                         :choices => ["choice1","choice2"]})
    assert_equal "question1", frame.question
    assert_equal "text1", frame.text
    assert_equal ["choice1","choice2"], frame.choices
  end

end
