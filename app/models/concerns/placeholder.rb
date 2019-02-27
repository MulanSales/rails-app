module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://www.placehold.it/#{height}x#{width}"
  end 

end