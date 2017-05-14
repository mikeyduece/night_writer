gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rosetta_stone'

class NightWriterTest < Minitest::Test

  # def test_if_class_nightwriter_created
  #   nightwriter = NightWriter.new
  # end
  #
  # def test_it_can_topfirst_one_letter
  #   nightwriter = NightWriter.new
  #   assert_equal "0.", nightwriter.top_first("a")
  # end
  #
  # def test_it_can_topfirst_two_chars
  #   nightwriter = NightWriter.new
  #   assert_equal "0.0.", nightwriter.top_first("ab")
  # end
  #
  # def test_it_can_topfirst_multiple
  #   nightwriter = NightWriter.new
  #   assert_equal "0.0.0.", nightwriter.top_first("abe")
  # end
  #
  # def test_it_can_topsecond
  #   nightwriter = NightWriter.new
  #   assert_equal "00", nightwriter.top_second("c")
  #   assert_equal "0000", nightwriter.top_second("cq")
  # end
  #
  # def test_it_can_topthird
  #   nightwriter = NightWriter.new
  #   assert_equal ".0", nightwriter.top_third("i")
  #   assert_equal ".0.0.0", nightwriter.top_third("ijt")
  # end

  def test_it_can_topfourth
    nightwriter = NightWriter.new
    assert_equal "..", nightwriter.top(",")
    assert_equal "......", nightwriter.top(",?!")
    assert_equal "0.00.0..", nightwriter.top("kgt!")
  end

  def test_if_mid_works
    nightwriter = NightWriter.new
    assert_equal "0.00.0..", nightwriter.mid("bgda")
  end

  def test_if_bottom_works
    nightwriter = NightWriter.new
    assert_equal "0.00.0..", nightwriter.bottom("mywg")
  end

  # def test_if_top_with_first_works
  #   nightwriter = NightWriter.new
  #   assert_equal "0.", nightwriter.top("a")
  # end
  #
  # def test_if_top_each_line_works
  #   nightwriter = NightWriter.new
  #   assert_equal "0.00.0..", nightwriter.top("aci?")
  # end
  #


end