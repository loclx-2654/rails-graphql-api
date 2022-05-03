# frozen_string_literal: true

class User < ApplicationRecord
  has_many :skills, dependent: :destroy
end
