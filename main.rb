# frozen_string_literal: true

def merge_sort(arr, result = [])
  return arr if arr.length < 2

  left_half = merge_sort(arr.slice(0, arr.length / 2))
  right_half = merge_sort(arr.slice(arr.length / 2, arr.length))

  until left_half.empty? || right_half.empty?
    result.push(left_half[0] < right_half[0] ? left_half.shift : right_half.shift)
  end

  result.push(*left_half.push(*right_half))
end
