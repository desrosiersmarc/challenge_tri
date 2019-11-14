require "application_system_test_case"

class LeaguesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit leagues_url

    assert_selector "h3", text: "Liste des ligues de Triathlon"
  end
end
