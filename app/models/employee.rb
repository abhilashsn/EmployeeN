class Employee < ActiveRecord::Base

  belongs_to :state
  has_many :details
  has_many :salary_structures

  validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
  validates_presence_of :state,:gender,:date_of_joining
  validates_presence_of :date_of_birth, if: :valid_date

  def valid_date
    if !self.date_of_joining.blank?
      if !(self.date_of_joining > self.date_of_birth+10.years)
        errors.add(:date_of_birth, "is invalid")
      end
    end
  end

  def self.listing_employees
    Employee.joins(:state)
  end


  def self.employee_new
    Employee.new(employee_params)
  end

end
