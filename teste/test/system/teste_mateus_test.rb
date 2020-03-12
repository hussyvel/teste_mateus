require "application_system_test_case"

class TesteMateusTest < ApplicationSystemTestCase
  setup do
    @teste_mateu = teste_mateus(:one)
  end

  test "visiting the index" do
    visit teste_mateus_url
    assert_selector "h1", text: "Teste Mateus"
  end

  test "creating a Teste mateu" do
    visit teste_mateus_url
    click_on "New Teste Mateu"

    fill_in "Data", with: @teste_mateu.data
    fill_in "Descricao", with: @teste_mateu.descricao
    fill_in "Email", with: @teste_mateu.email
    fill_in "Id seq", with: @teste_mateu.id_seq
    fill_in "Nome", with: @teste_mateu.nome
    click_on "Create Teste mateu"

    assert_text "Teste mateu was successfully created"
    click_on "Back"
  end

  test "updating a Teste mateu" do
    visit teste_mateus_url
    click_on "Edit", match: :first

    fill_in "Data", with: @teste_mateu.data
    fill_in "Descricao", with: @teste_mateu.descricao
    fill_in "Email", with: @teste_mateu.email
    fill_in "Id seq", with: @teste_mateu.id_seq
    fill_in "Nome", with: @teste_mateu.nome
    click_on "Update Teste mateu"

    assert_text "Teste mateu was successfully updated"
    click_on "Back"
  end

  test "destroying a Teste mateu" do
    visit teste_mateus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teste mateu was successfully destroyed"
  end
end
