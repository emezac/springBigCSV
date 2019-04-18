class Logupload < ApplicationRecord
   before_validation :clean_input
   validates :identifier, length: {minimum:1, maximum: 50}, allow_blank: false,presence: true
   validates :filename, presence: true


   def clean_input
     ActionController::Base.helpers.sanitize(self.filename)
   end
end
