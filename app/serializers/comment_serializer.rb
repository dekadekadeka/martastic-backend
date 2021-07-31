class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :commentable_type

  def user
    AssociatedUserSerializer.new(object.user, root: false)
  end
end
