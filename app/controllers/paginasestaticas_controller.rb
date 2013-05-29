class PaginasestaticasController < ApplicationController
  def inicio
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def ayuda

  end

  def sobre
  end

  def contacto

  end
end
