class SessionsController < ApplicationController
  def callback

    #omniauth.auth環境変数を取得
    auth = request.env["omniauth.auth"]

    #Userモデルを検索
    # user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
    user = User.where(provider: auth["provider"], uid: auth["uid"]).first

    if user
      # 既存のユーザ情報があった場合ルートに遷移させます
      # sessionの作成
       session[:user_id] = user.id
       redirect_to logs_path, :notice => "ログインしました。"
    else
       # Userモデルに:providerと:uidが無い場合（外部認証していない）、保存してからルートへ遷移させる
       User.create_with_omniauth(auth)
       redirect_to logs_path, :notice => "#{auth["info"]["name"]}さんの#{auth["provider"]}アカウントと接続しました。"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "ログアウトしました"
  end

end
