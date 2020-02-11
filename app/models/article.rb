# frozen_string_literal: true

##
# Article Model
class Article < ApplicationRecord
  has_rich_text :content
end
