require 'test_helper'

class SitesControllerTest < ActionController::TestCase
  setup do
    @site = sites(:one)   # Carga de fixtures site.yml, entrada :one
	@update = {           # Añadido: creamos un hash de parametros distintos
      :name         => 'AnotherSite',
      :description  => 'AnotherText',
	  :type_id      => 1,
      :latitude     => 9,
	  :longitude    => 9,
	  :zoom         => 1,
      :image_url    => 'MySite.png'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post :create, :site => @update      # Se cambia por @update
    end

    assert_redirected_to site_path(assigns(:site))
  end

  test "should show site" do
    get :show, :id => @site.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @site.to_param
    assert_response :success
  end

  test "should update site" do
    put :update, :id => @site.to_param, :site => @update    # Se cambia por @update
    assert_redirected_to site_path(assigns(:site))
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete :destroy, :id => @site.to_param
    end

    assert_redirected_to sites_path
  end
end
