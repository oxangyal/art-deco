require "test_helper"

class ArtworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get artworks_url
    assert_response :success
  end

  test "should get new" do
    get new_artwork_url
    assert_response :success
  end

  test "should create artwork" do
    assert_difference("Artwork.count") do
      post artworks_url, params: { artwork: { category: @artwork.category, description: @artwork.description, frame: @artwork.frame, height: @artwork.height, image: @artwork.image, materials: @artwork.materials, price: @artwork.price, title: @artwork.title, user_id: @artwork.user_id, width: @artwork.width, year: @artwork.year } }
    end

    assert_redirected_to artwork_url(Artwork.last)
  end

  test "should show artwork" do
    get artwork_url(@artwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_artwork_url(@artwork)
    assert_response :success
  end

  test "should update artwork" do
    patch artwork_url(@artwork), params: { artwork: { category: @artwork.category, description: @artwork.description, frame: @artwork.frame, height: @artwork.height, image: @artwork.image, materials: @artwork.materials, price: @artwork.price, title: @artwork.title, user_id: @artwork.user_id, width: @artwork.width, year: @artwork.year } }
    assert_redirected_to artwork_url(@artwork)
  end

  test "should destroy artwork" do
    assert_difference("Artwork.count", -1) do
      delete artwork_url(@artwork)
    end

    assert_redirected_to artworks_url
  end
end
