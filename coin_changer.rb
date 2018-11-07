def coin(cents)
  change_hash = Hash.new
   change_hash = {"penny" => cents}
  return change_hash
end
