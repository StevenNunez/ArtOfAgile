require 'test_helper'

class TestClassProject < Test::Unit::TestCase
  def test_can_take_user_input
    story_teller = StoryTeller.new
    story_teller.input = "Hello World"
    assert_equal "Hello World", story_teller.response
  end
end
