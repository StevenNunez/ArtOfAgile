$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'test_helper'

class TestStoryFrame < Test::Unit::TestCase

  def test_initialize
    frame = StoryFrame.new({:question => "question1", :text => "text1",
                         :choices => ["choice1","choice2"]})
    assert_equal "question1", frame.question
    assert_equal "text1", frame.text
    assert_equal ["choice1","choice2"], frame.choices
  end

  def test_no_exception_when_no_choices
    frame = StoryFrame.new({:text => "dummy", :question => "Q"})

    assert_nothing_raised { frame.ask_question_and_get_score }
  end

  def test_does_not_ask_question_if_story_does_not_have_it
    frame = StoryFrame.new({:text => "dummy",
                             :choices => ["FAIL THE TEST","FAIL THE TEST","FAIL THE TEST"]
                           })

    assert_nothing_raised { frame.ask_question_and_get_score }
  end

  def test_does_not_ask_question_if_story_does_not_have_it
    frame = StoryFrame.new({:text => "dummy",
                             :choices => ["FAIL THE TEST","FAIL THE TEST","FAIL THE TEST"]
                           })

    assert_nothing_raised { frame.display_choices }
  end

end
