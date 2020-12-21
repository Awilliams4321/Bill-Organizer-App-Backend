class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :bills
end
