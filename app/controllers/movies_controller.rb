class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    # 状態フィルタ
    if params[:is_showing].present?
      @movies = @movies.where(is_showing: params[:is_showing])
    end

    # キーワード検索
    if params[:keyword].present?
      #文字列展開することで、部分一致の検索を実現
      keyword = "%#{params[:keyword]}%"
      @movies = @movies.where("name LIKE ? OR description LIKE ?", keyword, keyword)
    end
  end
end
