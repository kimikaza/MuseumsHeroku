require 'test_helper'

class MuseumsControllerTest < ActionController::TestCase
  setup do
    @museum = museums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:museums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create museum" do
    assert_difference('Museum.count') do
      post :create, museum: { about_de: @museum.about_de, about_en: @museum.about_en, about_hr: @museum.about_hr, access: @museum.access, additional_de: @museum.additional_de, additional_en: @museum.additional_en, additional_hr: @museum.additional_hr, audio: @museum.audio, avg_rating: @museum.avg_rating, cafe: @museum.cafe, city: @museum.city, comment_de: @museum.comment_de, comment_en: @museum.comment_en, comment_hr: @museum.comment_hr, event_de: @museum.event_de, event_en: @museum.event_en, event_hr: @museum.event_hr, favourite: @museum.favourite, guide_de: @museum.guide_de, guide_en: @museum.guide_en, guide_hr: @museum.guide_hr, hours_de: @museum.hours_de, hours_en: @museum.hours_en, hours_hr: @museum.hours_hr, latitude: @museum.latitude, longitude: @museum.longitude, mail: @museum.mail, name_de: @museum.name_de, name_en: @museum.name_en, name_hr: @museum.name_hr, no: @museum.no, post: @museum.post, price_de: @museum.price_de, price_en: @museum.price_en, price_hr: @museum.price_hr, server_id: @museum.server_id, shop: @museum.shop, street: @museum.street, tel: @museum.tel, timestmp: @museum.timestmp, web: @museum.web }
    end

    assert_redirected_to museum_path(assigns(:museum))
  end

  test "should show museum" do
    get :show, id: @museum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @museum
    assert_response :success
  end

  test "should update museum" do
    put :update, id: @museum, museum: { about_de: @museum.about_de, about_en: @museum.about_en, about_hr: @museum.about_hr, access: @museum.access, additional_de: @museum.additional_de, additional_en: @museum.additional_en, additional_hr: @museum.additional_hr, audio: @museum.audio, avg_rating: @museum.avg_rating, cafe: @museum.cafe, city: @museum.city, comment_de: @museum.comment_de, comment_en: @museum.comment_en, comment_hr: @museum.comment_hr, event_de: @museum.event_de, event_en: @museum.event_en, event_hr: @museum.event_hr, favourite: @museum.favourite, guide_de: @museum.guide_de, guide_en: @museum.guide_en, guide_hr: @museum.guide_hr, hours_de: @museum.hours_de, hours_en: @museum.hours_en, hours_hr: @museum.hours_hr, latitude: @museum.latitude, longitude: @museum.longitude, mail: @museum.mail, name_de: @museum.name_de, name_en: @museum.name_en, name_hr: @museum.name_hr, no: @museum.no, post: @museum.post, price_de: @museum.price_de, price_en: @museum.price_en, price_hr: @museum.price_hr, server_id: @museum.server_id, shop: @museum.shop, street: @museum.street, tel: @museum.tel, timestmp: @museum.timestmp, web: @museum.web }
    assert_redirected_to museum_path(assigns(:museum))
  end

  test "should destroy museum" do
    assert_difference('Museum.count', -1) do
      delete :destroy, id: @museum
    end

    assert_redirected_to museums_path
  end
end
