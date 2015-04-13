class QuizController < ApplicationController
  def new
    @shortened_url = Quiz.new
  end
 
  def create
    @shortened_url = Quiz.new(params[:question][:answer][:type])
    if @shortened_url.save
      flash[:shortened_id] = @shortened_url.id
      redirect_to new_quiz_url
    else
      render :action => "new"
    end
  end
 
  def show
    @shortened_url = Quiz.find(params[:id])
    redirect_to @shortened_url.quiz
  end
 
end

