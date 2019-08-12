require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting flats page" do
    visit "/"

    assert_selector "h1", text: "Flats"
  end

  test "visiting the first flat page" do
    visit "/flats/145"

    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end
end
