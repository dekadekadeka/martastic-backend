class CommentSerializer < ActiveModel::Serializer
  belongs_to :user, serializer: AssociatedUserSerializer

  attributes :id, :content, :user, :commentable_type
end
