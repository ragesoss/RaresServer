# == Schema Information
#
# Table name: comparisons
#
#  id          :integer          not null, primary key
#  chosen      :string
#  unchosen    :string
#  client_info :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ComparisonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
