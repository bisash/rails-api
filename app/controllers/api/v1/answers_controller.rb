module Api
    module V1
        class AnswersController < ApplicationController
            def index
                answers = Answer.all
                render json: AnswerSerializer.new(answers, options).serialized_json
            end

            def show
                answer = Answer.find_by(id: params[:id])
                render json: AnswerSerializer.new(answer, options).serialized_json
            end

            def create
                answer = Answer.new(answer_params)
                if answer.save
                    render json: AnswerSerializer.new(answer).serialized_json
                else
                    render json: {error: answer.errors.messages}, status: 422
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
                params.require(:answer).permit(:ID, :answer, :question_id, :user_id)
            end

            def options
                @options ||= {include: %i[user question]}
            end
        end
    end
end