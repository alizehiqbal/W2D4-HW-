#QUADRATIC SEARCH -- NOTE THAT THIS IS A SUPPLANTING STRUCTURE

def quadratic_biggest_fish(fishes)
  fishes.each_with_index do |fish1, i1|
    max_length = true

    fishes.each_with_index do |fish2, i2|
      next if i1 == i2
      max_length = false if fish2.length > fish1.length
    end

    return fish1 if max_length
  end
end

#nLOGn Search (sorting algorithm)

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    mid = count / 2

    sorted_left = self[0..midpoint].merge_sort(&prc)
    sorted_right = self[mid..-1].merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)
    merged
  end
end 
