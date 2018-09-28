class TestsController < ApplicationController

  def home
  end


  def index
    if params[:bottom_test].blank?
     @tests = Test.all

    else
      @tests = Test.all
    end

  end

  def show

    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new
    @test.title = params[:title]
    # @test.words_list = params[:words_list].split(",")
    @test.save
    redirect_to tests_path
  end


  def edit
    @test = Test.find(params[:id])
  end

  def update
  end


  def destroy
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
  def test_params
    params.require(:test).permit(:title, :words_list)
  end



end
