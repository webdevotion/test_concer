require "rails_helper"

RSpec.describe User, :type => :model do
  it "has correct duplicated_associations" do
    associations = User.duplicated_associations

    # test equality of associations with know values
    # order does not matter for this purpose
    expect(associations).to match_array([:friends,:company])
    expect(associations).to match_array([:company,:friends])
  end
end