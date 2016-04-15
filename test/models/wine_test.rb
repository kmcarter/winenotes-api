require 'test_helper'

class WineTest < ActiveSupport::TestCase
  should have_db_column(:name)
  should have_db_column(:varietal)
  should have_db_column(:year)
  should have_db_column(:vinyard)
end
