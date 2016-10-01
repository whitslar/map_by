class Array

  def map_by(*args)
    result = map do |object|
      args.map do |method|
        object.instance_eval(method.to_s)
      end
    end
    args.size > 1 ? result : result.flatten
  end

end 
