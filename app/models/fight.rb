
class Fight < ApplicationRecord
  belongs_to :firstUnicorn, class_name: "Unicorn", foreign_key: "firstUnicorn_id"
  belongs_to :secondUnicorn, class_name: "Unicorn", foreign_key: "secondUnicorn_id"
end