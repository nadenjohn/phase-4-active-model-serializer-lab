class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags, :content, :author

  def short_content
    "#{self.object.content[0..39]}..."
  end

  def tags
    self.object.tags
  end

end
