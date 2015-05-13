require 'test_helper'

class AnagramasControllerTest < ActionController::TestCase
  setup do
    @anagrama = anagramas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anagramas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anagrama" do
    assert_difference('Anagrama.count') do
      post :create, anagrama: { check: @anagrama.check, word1: @anagrama.word1, word2: @anagrama.word2 }
    end

    assert_redirected_to anagrama_path(assigns(:anagrama))
  end

  test "should show anagrama" do
    get :show, id: @anagrama
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anagrama
    assert_response :success
  end

  test "should update anagrama" do
    patch :update, id: @anagrama, anagrama: { check: @anagrama.check, word1: @anagrama.word1, word2: @anagrama.word2 }
    assert_redirected_to anagrama_path(assigns(:anagrama))
  end

  test "should destroy anagrama" do
    assert_difference('Anagrama.count', -1) do
      delete :destroy, id: @anagrama
    end

    assert_redirected_to anagramas_path
  end
end
