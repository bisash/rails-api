module Api
    module V1
        class AnswersController < ApplicationController
            def index
                # answers = Answer.all
                p query_params
                answers = Answer.joins(:question, :user).where(query_params)
                render json: AnswerSerializer.new(answers, options).serialized_json
            end

            def show
                answer = Answer.find_by(id: params[:id])
                render json: AnswerSerializer.new(answer, options).serialized_json
            end

            def create
                parameters = answer_params
                if parameters.has_key?(:user_id) && parameters.has_key?(:question_id) && parameters.has_key?(:answer)
                    answer = Answer.new(parameters)

                    if answer.save
                        render json: AnswerSerializer.new(answer).serialized_json
                    else
                        render json: {error: answer.errors.messages}, status: 422
                    end
                else
                    render json: {error: "To create a answer you need to send user_id, question_id and answer"}, status: 422    
                end    
            end

            def update
                answer = Answer.find_by(id: params[:id])

                if answer.update(answer_params)
                    render json: AnswerSerializer.new(answer, options).serialized_json
                else
                    render json: {error: answer.errors.messages}, status: 422
                end
            end

            def destroy
                answer = Answer.find_by(id: params[:id])

                if answer.destroy
                    head :no_content
                else
                    render json: {error: answer.errors.messages}, status: 422
                end
            end

            private
            def answer_params
                params.permit(:ID, :answer, :question_id, :user_id)
            end

            def query_params
                params.permit(:question_id, :user_id, :"questions.label", :"questions.active", :"users.name", :"users.email")
            end

            def options
                @options ||= {include: %i[user question]}
            end
        end
    end
end