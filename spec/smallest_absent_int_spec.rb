class TestArray < Test::Unit::TestCase
  def test_arrays
    # simple cases
    assert_equal( 4, smallest_absent_int([1,2,3]))
    assert_equal( 4, smallest_absent_int([3,2,1]))
    assert_equal( 2, smallest_absent_int([1,3,4]))
    assert_equal( 2, smallest_absent_int([4,1,3]))
    assert_equal( 1, smallest_absent_int([-1,-5]))
    # handle duplicate values
    assert_equal( 1, smallest_absent_int([3,4,4,6,3]))
    assert_equal( 2, smallest_absent_int([-1,0,-1,0,1,0]))
    # larger datasets
    assert_equal(1001, smallest_absent_int((-1000..1000).to_a))
    assert_equal( 101, smallest_absent_int((-10..100).to_a + (102..150).to_a))
  end
end
