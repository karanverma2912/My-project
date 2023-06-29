class User < ApplicationRecord

    enum :status, [:activated, :deactivated]

end
