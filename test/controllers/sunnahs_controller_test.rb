require "test_helper"

class SunnahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sunnah = sunnahs(:one)
  end

  test "should get index" do
    get sunnahs_url
    assert_response :success
  end

  test "should get new" do
    get new_sunnah_url
    assert_response :success
  end

  test "should create sunnah" do
    assert_difference("Sunnah.count") do
      post sunnahs_url, params: { sunnah: { adalah: @sunnah.adalah, asbabalwurud: @sunnah.asbabalwurud, book: @sunnah.book, hadith: @sunnah.hadith, irsal: @sunnah.irsal, isnad: @sunnah.isnad, matn: @sunnah.matn, slug: @sunnah.slug, status: @sunnah.status, tags: @sunnah.tags, tawatur: @sunnah.tawatur, volume: @sunnah.volume } }
    end

    assert_redirected_to sunnah_url(Sunnah.last)
  end

  test "should show sunnah" do
    get sunnah_url(@sunnah)
    assert_response :success
  end

  test "should get edit" do
    get edit_sunnah_url(@sunnah)
    assert_response :success
  end

  test "should update sunnah" do
    patch sunnah_url(@sunnah), params: { sunnah: { adalah: @sunnah.adalah, asbabalwurud: @sunnah.asbabalwurud, book: @sunnah.book, hadith: @sunnah.hadith, irsal: @sunnah.irsal, isnad: @sunnah.isnad, matn: @sunnah.matn, slug: @sunnah.slug, status: @sunnah.status, tags: @sunnah.tags, tawatur: @sunnah.tawatur, volume: @sunnah.volume } }
    assert_redirected_to sunnah_url(@sunnah)
  end

  test "should destroy sunnah" do
    assert_difference("Sunnah.count", -1) do
      delete sunnah_url(@sunnah)
    end

    assert_redirected_to sunnahs_url
  end
end
