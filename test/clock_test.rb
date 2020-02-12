# clock_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/clock'

Minitest::Reporters.use!

describe "clock" do
  it "returns a string" do
    # Arrange
    hours   = 11
    minutes = 11
    seconds = 11
    # Act
    output = clock(hours,minutes,seconds)
    # Assert
    expect(output).must_be_instance_of(String)
  end

  it "returns in HH:MM:SS format" do
    # Arrange & Act
    output = clock(12,20,15)
    # Assert
    expect(output).must_equal "12:20:15"
  end

  # Positive Edge Cases
  # Numbers less than 10
  it "returns a value with leading )s for numbers under 10" do
    output = clock(9,8,7)
    expect(output).must_equal "09:08:07"
  end
  # Minutes and Seconds == 0
  it "returns a value in HH:00:00 format "

  # Negative Edge Cases
  # Minutes and/or seconds nil
  # We are not going to support military time
    # Hours 12 > x <= 24
    # Hours == 0


end
