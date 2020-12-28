require 'test_helper'

class RezultTest < ActiveSupport::TestCase
  test 'should set and get values' do
      temp = Rezult.create(input:"1 2 2 4",output:"[[1]]")
      temp1 = Rezult.find_by(input:"1 2 2 4")
      str = temp1.output
      temp1.delete

      assert_equal temp.output, str
    end

    test 'should error on non unique N' do
      assert_equal Rezult.create(input:"1 2 5 5").valid?, true
    end

    test 'should save data into db' do
      assert Rezult.create(input: "1 2 5",output: "[[1], [5]]")
    end

    test 'should get data from db' do
      Rezult.create(input: "1 2 5",output: "[[1], [5]]")
      temp2 = Rezult.find_by(input:"1 2 5").output
      assert_equal temp2,"[[1], [5]]"
    end


end
