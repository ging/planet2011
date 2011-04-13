require 'test_helper'

class TypeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "Type attributes must not be empty" do
    type = Type.new
    assert type.invalid?
    assert type.errors[:name].any?
    assert type.errors[:description].any?
  end
end
