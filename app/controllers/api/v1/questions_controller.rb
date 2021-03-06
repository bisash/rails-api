module Api
    module V1
        class QuestionsController < ApplicationController
            def index
                questions = Question.all
                render json: QuestionSerializer.new(questions).serialized_json
            end

            def show
                question = Question.find_by(id: params[:id])
                render json: QuestionSerializer.new(question).serialized_json
            end

            def create
                parameters = question_params

                if parameters.has_key?(:label) && parameters.has_key?(:active)
                    question = Question.new(question_params)

                    if question.save
                        render json: QuestionSerializer.new(question).serialized_json
                    else
                        render json: {error: question.errors.messages}, status: 422
                    end    
                else
                    render json: {error: "To create a question you need to send label and active"}, status: 422    
                end
            end

            def update
                question = Question.find_by(id: params[:id])

                if question.update(question_params)
                    render json: QuestionSerializer.new(question).serialized_json
                else
                    render json: {error: question.errors.messages}, status: 422
                end
            end

            def destroy
                question = Question.find_by(id: params[:id])

                if question.destroy
                    head :no_content
                else
                    render json: {error: question.errors.messages}, status: 422
                end
            end

            private
            def question_params
                params.require(:question).permit(:ID, :label, :active)
            end
        end
    end
end