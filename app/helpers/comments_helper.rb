module CommentsHelper
  def user_is_authorized_for_comment?(comment)
    current_user && (current_user == comment.user || current_user.admin?)
  end
  
  def user_has_comments?
    if @user.comments.empty?
      "#{@user.name} has not submitted any comments yet."
    else
      render @user.comments
    end
  end
end
