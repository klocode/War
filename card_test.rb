require 'minitest/autorun'
require_relative 'card'
require_relative 'deck'


class CardTest < MiniTest::Test


  def test_card_has_attributes
    assert c("K").suit
    assert c("K").face
    assert c("K").value
  end

  def test_ace_value
    assert c("A").value == 14
  end

  def test_king_value
    assert c("K").value == 13
  end

  def test_queen_value
    assert c("Q").value == 12
  end

  def test_jack_value
    assert c("J").value == 11
  end

  def test_comparing_cards
    assert c("J").value > c("4").value
    assert c("2").value < c("3").value
  end


  #
  # def test_deck_has_4_face_cards
  #
  # end
  #
  # def test_deck_is_shuffled
  #
  # end

  def c(f)
    Card.new("hearts", f)
  end

end
