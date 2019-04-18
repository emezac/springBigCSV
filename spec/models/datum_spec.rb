require 'rails_helper'

RSpec.describe Datum, type: :model do

  describe Datum do
    it { is_expected.to validate_presence_of(:identifier) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:first) }
    it { is_expected.to validate_presence_of(:last) }
  end
end
