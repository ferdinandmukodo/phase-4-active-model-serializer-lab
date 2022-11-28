class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  # post has only one author
  belongs_to :author
  # post has many tags
  has_many :tags
end