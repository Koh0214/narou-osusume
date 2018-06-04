class ApplicationController < ActionController::Base

  def root
    render html: "なろうのオススメへようこそ！！"
  end
end
