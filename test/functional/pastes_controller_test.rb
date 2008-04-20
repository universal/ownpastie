require File.dirname(__FILE__) + '/../test_helper'

class PastesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pastes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_paste
    assert_difference('Paste.count') do
      post :create, :paste => { }
    end

    assert_redirected_to paste_path(assigns(:paste))
  end

  def test_should_show_paste
    get :show, :id => pastes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => pastes(:one).id
    assert_response :success
  end

  def test_should_update_paste
    put :update, :id => pastes(:one).id, :paste => { }
    assert_redirected_to paste_path(assigns(:paste))
  end

  def test_should_destroy_paste
    assert_difference('Paste.count', -1) do
      delete :destroy, :id => pastes(:one).id
    end

    assert_redirected_to pastes_path
  end
end
