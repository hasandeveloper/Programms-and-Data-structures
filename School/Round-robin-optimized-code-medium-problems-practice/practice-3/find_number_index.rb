# class Notify < ActiveSupport::Observe

# Obser User, Post

# def after_create record
#    return unless record.was_changed?

#     case record.class.name
#     when 'User'
#         # Notify Email
#     when 'Post'
#         # Notify Email
#     end

# end

# end


# Product (id, title, descripton) has_many :variants

# Variant (id, title, product_id) belongs_to :product
#                                 has_many :price_versionings

# Price Versioning (id, price, variant_id) belongs_to :variants

# month/day product_id


def find_number_index array, target
    array.each_with_index do |v, i|
        if v == target
            return i
        else
            "Not found"
        end
    end
end

p find_number_index [5, 6,7,8,1,2,3], 1
