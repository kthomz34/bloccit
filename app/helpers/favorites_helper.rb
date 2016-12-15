module FavoritesHelper
  def user_has_favorites?
    if @user.favorites.empty?
      "#{@user.name} has not favorited any posts yet."
    else
      render @user.favorites
    end
  end
end
