class NewsletterController < ApplicationController
  def new
    @title = 'Add a Newsletter'
  end

  def create
    NewsletterJob.perform_later({
                                 emails: params[:emails],
                                 subject: params[:subject],
                                 newsletter: params[:newsletter]
                                })
    flash[:success] = 'Newsletter Sent!'
    redirect_to new_newsletter_path
  end
end
