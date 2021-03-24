class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :category, :body
  belongs_to :category

  def category
    object.category.name
  end
end
