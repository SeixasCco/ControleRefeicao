require "application_system_test_case"

class RefeicosTest < ApplicationSystemTestCase
  setup do
    @refeico = refeicos(:one)
  end

  test "visiting the index" do
    visit refeicos_url
    assert_selector "h1", text: "Refeicos"
  end

  test "should create refeico" do
    visit refeicos_url
    click_on "New refeico"

    fill_in "Data", with: @refeico.data
    fill_in "Refeicao", with: @refeico.refeicao
    click_on "Create Refeico"

    assert_text "Refeico was successfully created"
    click_on "Back"
  end

  test "should update Refeico" do
    visit refeico_url(@refeico)
    click_on "Edit this refeico", match: :first

    fill_in "Data", with: @refeico.data
    fill_in "Refeicao", with: @refeico.refeicao
    click_on "Update Refeico"

    assert_text "Refeico was successfully updated"
    click_on "Back"
  end

  test "should destroy Refeico" do
    visit refeico_url(@refeico)
    click_on "Destroy this refeico", match: :first

    assert_text "Refeico was successfully destroyed"
  end
end
