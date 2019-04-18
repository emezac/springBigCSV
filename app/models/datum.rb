class Datum < ApplicationRecord

  validates :phone, format: { with: /^(\(?([1-9]{1}[0-9]{1}[1-9]{1})\)?[-.]?([0-9]{3})[-.]?([0-9]{4}))|([^a-zA-Z]([0-9]{5})?[-.][^a-zA-Z]?([0-9]{5}))$/, message: 'Invalid phone number', multiline: true }
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/, message: 'Wrong email format' } 
  validates :first, format: { with: /\A[a-zA-Z0-9]{2,}\z/, message: 'First Name should be at least 2 characters long' } 
  validates :last, format: { with: /\A[a-zA-Z0-9]{2,}\z/, message: 'Last Name should be at least 2 characters long' } 

end
