require "test_helper"

class RefeicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refeico = refeicos(:one)
  end

  test "should get index" do
    get refeicos_url
    assert_response :success
  end

  test "should get new" do
    get new_refeico_url
    assert_response :success
  end

  test "should create refeico" do
    assert_difference("Refeico.count") do
      post refeicos_url, params: { refeico: { data: @refeico.data, refeicao: @refeico.refeicao } }
    end

    assert_redirected_to refeico_url(Refeico.last)
  end

  test "should show refeico" do
    get refeico_url(@refeico)
    assert_response :success
  end

  test "should get edit" do
    get edit_refeico_url(@refeico)
    assert_response :success
  end

  test "should update refeico" do
    patch refeico_url(@refeico), params: { refeico: { data: @refeico.data, refeicao: @refeico.refeicao } }
    assert_redirected_to refeico_url(@refeico)
  end

  test "should destroy refeico" do
    assert_difference("Refeico.count", -1) do
      delete refeico_url(@refeico)
    end

    assert_redirected_to refeicos_url
  end
end
