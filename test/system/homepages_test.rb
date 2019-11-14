require "application_system_test_case"

class HomepagesTest < ApplicationSystemTestCase
  test "Visiting the homepage" do
    visit ""

    assert_selector "h1", text: "Challenge Triathlon 2020"
  end

  test "Verify button list and content" do
    visit ""
    assert_selector "div", text: "Importer des licenciés"
    assert_selector "div", text: "Créer une course"
    assert_selector "div", text: "Régles de calculs"
    assert_selector "div", text: "Importer des résultats"
    assert_selector "div", text: "Saisir des résultats"
    assert_selector "div", text: "Afficher des résultats"
  end
end
