require 'test_helper'

class ArtistControllerTest < ActionController::TestCase

  test "should get index" do #pass
    get :index
    assert_response :success #does it have somewhere to go
    assert_template :index #is it going to the right place
  end

  test "should get show" do
    get :show, {id: 1 }
    assert_response :success
    assert_template :show
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit,  {id: 1 }
    assert_response :success
    assert_template :edit
  end

  test "should be able to create an artist" do
    post_params = {artist: {name: "Regina Spektor"}}
    post :create, post_params
    assert_response :redirect
  end

  test "Creating an artist should change the number of artists" do
    assert_difference("Artist.count", 1) do
      post_params = {artist: {name: "Regina Spektor"}}
      post :create, post_params
    end
  end

  test "Should be able to update an artist" do
    patch :update,  {id: 1 }
    assert_response :success
  end

  test "Should be able to delete Bonjovi" do
    delete :destroy,  {id: artists(:bonjovi).id }
    assert_response :redirect
  end

  test "Deleting Bonjovi should change the number of artists" do
    assert_difference("Artist.count", -1) do
      delete :destroy,  {id: artists(:bonjovi).id }
    end
  end

end
