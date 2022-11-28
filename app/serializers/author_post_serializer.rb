class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  # author has many tags
  has_many :tags
  def short_content
    "#{object.content[0..39]}..."
  end
end