module PostsHelper
  def user_is_authorized_for_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end
  
  def user_has_posts?
    if @user.posts.empty?
      "#{@user.name} has not submitted any posts yet."
    else
      render @user.posts
    end
  end
end
