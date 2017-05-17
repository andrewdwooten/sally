class Api::V1::PostsController < ApplicationController

  def create
    if request.headers['token'] == ENV['bot_access_token']
      Post.create(salary: params[:salary])
      SlackClientService.new.post_job_info(Post.first.salary)
      render json: {response: 'yay!'}
    else
      render json: {response: 'no'}
    end
  end

end
