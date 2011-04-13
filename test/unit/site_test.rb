require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # Replace this with your real tests.

  test "Site attributes must not be empty" do
    site = Site.new
    assert site.invalid?
    assert site.errors[:name].any?
    assert !site.errors[:description].any?
    assert site.errors[:type_id].any?
    assert site.errors[:latitude].any?
    assert site.errors[:longitude].any?
    assert site.errors[:zoom].any?
    assert site.errors[:image_url].any?
  end


  test "zoom must be greater than 0" do

	site = Site.new(:name         => 'AnotherSite',
      :description  => 'AnotherText',
	  :type_id      => 1,
      :latitude     => 9,
	  :longitude    => 9,
	  :zoom         => 1,
      :image_url    => 'MySite.png'
    )

    site.zoom = -1
    assert site.invalid?

    site.zoom = 0
    assert site.invalid?

    site.zoom = 1
    assert site.valid?
  end
end
