require 'spec_helper'

describe "collective named method feature" do
  before :each do
    pending "Collective named methods don't is supported yet"
  end

  describe "named method" do
      it "should be called with a hash like parameter" do
        phrase = @test.say phrase: "Hi!"
        phrase.should be == "Hi!"
      end

    describe "parameter" do
      it "should can be optional" do
        @test.optional_say.should be == "I'm mute"
      end

      context "multiple" do
        it "should can have any order" do
          @test.move_to(y: 2, x:1).should be == [1,2]
        end

        it "should can be optional" do
          @test.three_params_first_optional(y:10,z:20).should be == [:x,10,20]
          @test.three_params_middle_optional(z:20,x:10).should be == [10,:y,20]
          @test.three_params_last_optional(x:20,y:10).should be == [20,10,:z]
          @test.three_params_first_2_optionals(z:10).should be == [:x,:y,10]
          @test.three_params_last_2_optionals(x:10).should be == [10,:y,:z]
        end
      end

      context "after reopen class" do
        it "should be a no named method" do
          pending :bug
          @test.after_opened_say("hello").should be == "hello"
        end
      end

      context "ArgumentError when" do
        it "called but not defined" do
          lambda{@test.say(phrase: "hi!",undefined: "hugo")}.should raise_error ArgumentError, /'undefined'[\w\s]*'say'/
          lambda{@test.say(undefined: "hugo")}.should raise_error ArgumentError
        end

        it "required but not called" do
          lambda {@test.say}.should raise_error ArgumentError
        end
      end

    end
  end

  describe "no named method" do
    it "should be call with normal parameters" do
      phrase = @test.no_named_say "Hi!"
      phrase.should be == "Hi!"
    end
  end
end
