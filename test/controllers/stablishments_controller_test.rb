require 'test_helper'

class StablishmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stablishment = stablishments(:one)
  end

  test "should get index" do
    get stablishments_url
    assert_response :success
  end

  test "should get new" do
    get new_stablishment_url
    assert_response :success
  end

  test "should create stablishment" do
    assert_difference('Stablishment.count') do
      post stablishments_url, params: { stablishment: { address: @stablishment.address, cnpj: @stablishment.cnpj, country: @stablishment.country, fantasy: @stablishment.fantasy, name: @stablishment.name, phone2: @stablishment.phone2, phone: @stablishment.phone, user_id: @stablishment.user_id } }
    end

    assert_redirected_to stablishment_url(Stablishment.last)
  end

  test "should show stablishment" do
    get stablishment_url(@stablishment)
    assert_response :success
  end

  test "should get edit" do
    get edit_stablishment_url(@stablishment)
    assert_response :success
  end

  test "should update stablishment" do
    patch stablishment_url(@stablishment), params: { stablishment: { address: @stablishment.address, cnpj: @stablishment.cnpj, country: @stablishment.country, fantasy: @stablishment.fantasy, name: @stablishment.name, phone2: @stablishment.phone2, phone: @stablishment.phone, user_id: @stablishment.user_id } }
    assert_redirected_to stablishment_url(@stablishment)
  end

  test "should destroy stablishment" do
    assert_difference('Stablishment.count', -1) do
      delete stablishment_url(@stablishment)
    end

    assert_redirected_to stablishments_url
  end
end
