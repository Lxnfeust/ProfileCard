require "test_helper"

class ProfileCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_card = profile_cards(:one)
  end

  test "should get index" do
    get profile_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_card_url
    assert_response :success
  end

  test "should create profile_card" do
    assert_difference('ProfileCard.count') do
      post profile_cards_url, params: { profile_card: { background: @profile_card.background, birth_year: @profile_card.birth_year, first_name: @profile_card.first_name, hobbies: @profile_card.hobbies, last_name: @profile_card.last_name, picture: @profile_card.picture } }
    end

    assert_redirected_to profile_card_url(ProfileCard.last)
  end

  test "should show profile_card" do
    get profile_card_url(@profile_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_card_url(@profile_card)
    assert_response :success
  end

  test "should update profile_card" do
    patch profile_card_url(@profile_card), params: { profile_card: { background: @profile_card.background, birth_year: @profile_card.birth_year, first_name: @profile_card.first_name, hobbies: @profile_card.hobbies, last_name: @profile_card.last_name, picture: @profile_card.picture } }
    assert_redirected_to profile_card_url(@profile_card)
  end

  test "should destroy profile_card" do
    assert_difference('ProfileCard.count', -1) do
      delete profile_card_url(@profile_card)
    end

    assert_redirected_to profile_cards_url
  end
end
