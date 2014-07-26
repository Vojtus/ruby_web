require 'test_helper'

class DrinksControllerTest < ActionController::TestCase
  setup do
    @drink = drinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drink" do
    assert_difference('Drink.count') do
      post :create, drink: { autor: @drink.autor, category: @drink.category, iba: @drink.iba, name: @drink.name, obr1: @drink.obr1, obr2: @drink.obr2, obr3: @drink.obr3, text1: @drink.text1, text2: @drink.text2, text3: @drink.text3, text4: @drink.text4, text5: @drink.text5, time: @drink.time }
    end

    assert_redirected_to drink_path(assigns(:drink))
  end

  test "should show drink" do
    get :show, id: @drink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drink
    assert_response :success
  end

  test "should update drink" do
    patch :update, id: @drink, drink: { autor: @drink.autor, category: @drink.category, iba: @drink.iba, name: @drink.name, obr1: @drink.obr1, obr2: @drink.obr2, obr3: @drink.obr3, text1: @drink.text1, text2: @drink.text2, text3: @drink.text3, text4: @drink.text4, text5: @drink.text5, time: @drink.time }
    assert_redirected_to drink_path(assigns(:drink))
  end

  test "should destroy drink" do
    assert_difference('Drink.count', -1) do
      delete :destroy, id: @drink
    end

    assert_redirected_to drinks_path
  end
end
