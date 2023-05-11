require "application_system_test_case"

class SunnahsTest < ApplicationSystemTestCase
  setup do
    @sunnah = sunnahs(:one)
  end

  test "visiting the index" do
    visit sunnahs_url
    assert_selector "h1", text: "Sunnahs"
  end

  test "should create sunnah" do
    visit sunnahs_url
    click_on "New sunnah"

    fill_in "Adalah", with: @sunnah.adalah
    fill_in "Asbabalwurud", with: @sunnah.asbabalwurud
    fill_in "Book", with: @sunnah.book
    fill_in "Hadith", with: @sunnah.hadith
    fill_in "Irsal", with: @sunnah.irsal
    fill_in "Isnad", with: @sunnah.isnad
    fill_in "Matn", with: @sunnah.matn
    fill_in "Slug", with: @sunnah.slug
    fill_in "Status", with: @sunnah.status
    fill_in "Tags", with: @sunnah.tags
    fill_in "Tawatur", with: @sunnah.tawatur
    fill_in "Volume", with: @sunnah.volume
    click_on "Create Sunnah"

    assert_text "Sunnah was successfully created"
    click_on "Back"
  end

  test "should update Sunnah" do
    visit sunnah_url(@sunnah)
    click_on "Edit this sunnah", match: :first

    fill_in "Adalah", with: @sunnah.adalah
    fill_in "Asbabalwurud", with: @sunnah.asbabalwurud
    fill_in "Book", with: @sunnah.book
    fill_in "Hadith", with: @sunnah.hadith
    fill_in "Irsal", with: @sunnah.irsal
    fill_in "Isnad", with: @sunnah.isnad
    fill_in "Matn", with: @sunnah.matn
    fill_in "Slug", with: @sunnah.slug
    fill_in "Status", with: @sunnah.status
    fill_in "Tags", with: @sunnah.tags
    fill_in "Tawatur", with: @sunnah.tawatur
    fill_in "Volume", with: @sunnah.volume
    click_on "Update Sunnah"

    assert_text "Sunnah was successfully updated"
    click_on "Back"
  end

  test "should destroy Sunnah" do
    visit sunnah_url(@sunnah)
    click_on "Destroy this sunnah", match: :first

    assert_text "Sunnah was successfully destroyed"
  end
end
