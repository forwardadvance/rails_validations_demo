class Port < ActiveRecord::Base

  validates_presence_of :name, message: 'Please enter a name for this port'
  validates_numericality_of :lat, :lng
  validates_inclusion_of :name, in: ['Pirates Cove', 'Cape of Danger']

  validate :has_a_cat


  def cats
    "hammy"
  end

  private

    def has_a_cat
      self.errors.add(:cats, "were not present")
    end
end
