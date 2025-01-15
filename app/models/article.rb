class Article < ApplicationRecord
  validates_presence_of :title, :header, :body
end
