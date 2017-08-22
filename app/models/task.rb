class Task < ApplicationRecord
  MIN_LENGTH = 3

  validates_length_of :name, minimum: MIN_LENGTH
  validates_length_of :description, minimum: MIN_LENGTH

  private
  def timestamp_attributes_for_create
    super << :dateCreated
  end

  def timestamp_attributes_for_update
    super << :dateUpdated
  end
end
