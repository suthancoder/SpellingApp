class TestsController < ApplicationController

  def index
    @tests = Test.all
  end

  def show
    @test = Test.find(params[:id])
  end

  def new
  end

  def create
  end
  


  def take_test
    @test = Test.new
    @test.user_id = current_user.id
    @word_array = Word.all.sample(5)
    @word_array.each do |i|
      @test.words_list << i.word
    end
    @test.save
  end

  def say_word
    %x(say #{params[:sample]})

    redirect_to take_test_tests_path
  end



  private


end
