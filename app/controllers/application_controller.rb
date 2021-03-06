class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    user_path(current_user) # ログイン後に遷移するpathを設定（ユーザーページへ遷移）
  end

  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定（ログインページへ遷移）
  end
end
