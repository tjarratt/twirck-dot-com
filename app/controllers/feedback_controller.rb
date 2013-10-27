class FeedbackController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    if params[:feedback] && params[:whom]
      Feedback.create(
        :content => params[:feedback],
        :from => params[:whom],
      )
      render :text => "Got it. Thanks!", :layout => false
    else
      render :text => "HEY CUT IT OUT", :layout => false
    end
  end
end
