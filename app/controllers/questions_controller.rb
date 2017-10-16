class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
    @question.save
    respond_to do |wants|
      wants.js
    end
  end

  def destroy

  end

  def form
    @question = Question.new(test_id: params[:test_id])
    respond_to do |wants|
      wants.js
    end
  end

  private
    def question_params
      params.require(:question).permit(:content, :category, :timelimit, :test_id)
    end
end
