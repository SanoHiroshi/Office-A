class AuthController < ApplicationController

  def gettoken
    token = get_token_from_code params[:code]
    session[:azure_token] = token.to_hash
    session[:user_email] = get_user_email token.token
    redirect_to mail_index_url
  end
end
