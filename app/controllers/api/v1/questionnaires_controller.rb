class Api::V1::QuestionnairesController < ApplicationController
  skip_before_action :verify_authenticity_token

  rescue_from Exception, with: :render_status_500

  def create
    questionnaire = Questionnaire.new(questionnaire_params)
    if questionnaire.save
      render json: questionnaire, status: :created
    else
      render json: { errors: questionnaire.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  private
  
    def questionnaire_params
      params.fetch(:questionnaire, {}).permit(:q1, :q2, :q2_other, :q3, :q4, :q5, :q6, :q7, :q7_other, :q8, :q9)
    end

    def render_status_500
      render json: { errors: [exception] }, status: 500
    end
end
