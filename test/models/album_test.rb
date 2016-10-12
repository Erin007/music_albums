require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "An Album must have a name and artist" do
    assert albums(:slippery_when_wet).valid?
    #Remove the name of the album so we can make sure it's invalid
    albums(:slippery_when_wet).name = nil #local to this test only
    assert_not albums(:slippery_when_wet).valid?
  end

    test "Slippery When Wet is by Bonjovi" do
    assert_equal albums(:slippery_when_wet).artist, artists(:bonjovi)
  end
end
