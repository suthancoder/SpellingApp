class TestsController < ApplicationController

  before_action :set_restaurant, only: [:show, :update, :destroy, :edit]

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

  end

  def new
    @test = Test.new
  end

  def create
    Test.create(test_params)
    redirect_to tests_path
  end


  def edit
  end

  def update
    @test.update(test_params)
    redirect_to test_path(@test)
  end


  def destroy
    @test.destroy
    redirect_to tests_path
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
    params.require(:test).permit(:title, :words_list, :user_id)
  end

  def set_restaurant
    @test = Test.find(params[:id])
  end


end
