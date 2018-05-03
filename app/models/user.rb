class User < ApplicationRecord
 has_secure_password

  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                      message: "doesn't look like a proper email address"
end
