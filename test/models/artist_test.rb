require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "An Artist must have a name" do
    red_hot_chilli_peppers = Artist.new

    assert_not red_hot_chilli_peppers.valid? "An Artist without a name is invalid."
    red_hot_chilli_peppers.name = "Kanye"
    assert red_hot_chilli_peppers.valid?  "Somehow Kanye is not a valid name."
  end

  test "Retrieves the correct number of albums" do
    assert_equal artists(:bonjovi).albums.length, 2
    assert_equal artists(:beyonce).albums.length, 0
  end

  test "Retrieves the correct albums associated with an artist" do
    assert artists(:bonjovi).albums.include?(albums(:slippery_when_wet))

    assert_includes artists(:bonjovi).albums, albums(:slippery_when_wet)
  end
end
