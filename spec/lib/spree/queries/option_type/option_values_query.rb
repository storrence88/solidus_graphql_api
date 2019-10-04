# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Spree::Queries::OptionType::OptionValuesQuery do
  let(:option_type) { create(:option_type) }

  let!(:option_values) { create_list(:option_value, 2, option_type: option_type) }

  it { expect(described_class.new(option_type: option_type).call.sync).to eq(option_values) }
end
