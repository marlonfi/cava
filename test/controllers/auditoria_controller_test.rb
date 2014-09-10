require 'test_helper'

class AuditoriaControllerTest < ActionController::TestCase
  setup do
    @auditorium = auditoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auditoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auditorium" do
    assert_difference('Auditorium.count') do
      post :create, auditorium: { codigo: @auditorium.codigo, programed_at: @auditorium.programed_at }
    end

    assert_redirected_to auditorium_path(assigns(:auditorium))
  end

  test "should show auditorium" do
    get :show, id: @auditorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auditorium
    assert_response :success
  end

  test "should update auditorium" do
    patch :update, id: @auditorium, auditorium: { codigo: @auditorium.codigo, programed_at: @auditorium.programed_at }
    assert_redirected_to auditorium_path(assigns(:auditorium))
  end

  test "should destroy auditorium" do
    assert_difference('Auditorium.count', -1) do
      delete :destroy, id: @auditorium
    end

    assert_redirected_to auditoria_path
  end
end
