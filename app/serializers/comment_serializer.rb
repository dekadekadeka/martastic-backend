class CommentSerializer < ActiveModel::Serializer
    belongs_to :commentable, polymorphic: true
  
    attributes :id, :content, :commentable_type, :commentable_id, :user_id
  end