require 'test/unit'
require './sequence'

class TestSequence < Test::Unit::TestCase

  def setup
    @sequence = Class.new { extend Sequence }
  end

  def test_get_sequence
    assert_equal('11', @sequence.continue_sequence('1', 2).last)
    assert_equal('111221', @sequence.continue_sequence('1', 5).last)
    assert_equal('13112221', @sequence.continue_sequence('1',7).last)
  end

  def test_next_sequence_elem
    assert_equal('11', @sequence.next_sequence_elem('1'))
    assert_equal('13112221', @sequence.next_sequence_elem('312211'))
  end

end