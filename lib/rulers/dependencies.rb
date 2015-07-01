class Object
  def self.const_missing(c)
    require c.to_s.to_snake_case
    Object.const_get(c)
  end
end
