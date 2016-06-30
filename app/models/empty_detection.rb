module EmptyDetection
  def all_empty?
    attributes.all? do |k, v|
      ['id', 'inspection_id', 'created_at', 'updated_at'].include?(k) || v.blank?
    end
  end

  def any_empty?
    attributes.each do |k, v|
      return true if v.blank?
    end
    false
  end
end
