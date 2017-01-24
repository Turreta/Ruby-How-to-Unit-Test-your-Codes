require 'test/unit'
require_relative '../rb/SimpleCalculatorClass'

class SimpleCalculatorClassTests < Test::Unit::TestCase
    
    Test::Unit.at_start do
      puts 'START: runs only once at start'
    end

    Test::Unit.at_exit do
      puts 'END: runs only once at end'
    end

    def setup
        puts "Runs before each test method"
        @cal = SimpleCalculatorClass.new()
    end

    def teardown
        puts "Runs after each test method"
    end    

    def test_add()

        assert_equal(2, @cal.add(1,1))
    end

    def test_sub()
        assert_equal(0, @cal.sub(1,1))
    end

    def test_mul()
        assert_equal(12, @cal.mul(4,3))
    end

    def test_div()
        assert_equal(1, @cal.div(4,3))
    end
end
