class ChoicesController < ApplicationController

  def create
    @choice = Choice.new(choice_params)
    @choice.save
    @question = @choice.question
    respond_to do |wants|
      wants.js
    end
  end

  def destroy

  end

  def form
    @question = Question.find(params[:question_id])
    @choice = Choice.new(question_id: params[:question_id])
    respond_to do |wants|
      wants.js
    end
  end

  private
    def choice_params
      params.require(:choice).permit(:content, :question_id)
    end
end
