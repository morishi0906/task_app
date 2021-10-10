class Schedule < ApplicationRecord
    validates :tittle, :startday, :endday, {presence: true}
    validates :tittle,{length: {maximum: 24}}
    validates :schedulememo, {length: {maximum: 300}}
end
