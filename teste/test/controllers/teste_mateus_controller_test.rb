require 'test_helper'

class TesteMateusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teste_mateu = teste_mateus(:one)
  end

  test "should get index" do
    get teste_mateus_url
    assert_response :success
  end

  test "should get new" do
    get new_teste_mateu_url
    assert_response :success
  end

  test "should create teste_mateu" do
    assert_difference('TesteMateu.count') do
      post teste_mateus_url, params: { teste_mateu: { data: @teste_mateu.data, descricao: @teste_mateu.descricao, email: @teste_mateu.email, id_seq: @teste_mateu.id_seq, nome: @teste_mateu.nome } }
    end

    assert_redirected_to teste_mateu_url(TesteMateu.last)
  end

  test "should show teste_mateu" do
    get teste_mateu_url(@teste_mateu)
    assert_response :success
  end

  test "should get edit" do
    get edit_teste_mateu_url(@teste_mateu)
    assert_response :success
  end

  test "should update teste_mateu" do
    patch teste_mateu_url(@teste_mateu), params: { teste_mateu: { data: @teste_mateu.data, descricao: @teste_mateu.descricao, email: @teste_mateu.email, id_seq: @teste_mateu.id_seq, nome: @teste_mateu.nome } }
    assert_redirected_to teste_mateu_url(@teste_mateu)
  end

  test "should destroy teste_mateu" do
    assert_difference('TesteMateu.count', -1) do
      delete teste_mateu_url(@teste_mateu)
    end

    assert_redirected_to teste_mateus_url
  end
end
