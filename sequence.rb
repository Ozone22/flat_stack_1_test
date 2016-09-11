module Sequence

  def continue_sequence(sequence, n)
    if n == 1
      sequence
    else
      result = [sequence]
      (1..n - 1).each do |_i|
        current_sequence = result.last || sequence
        result << next_sequence_elem(current_sequence)
      end
      result
    end
  end

  def next_sequence_elem(current_sequence)
    current_sequence += '.'
    next_seq = ''
    if current_sequence.length == 2
      next_seq << 1.to_s << current_sequence[0]
    else
      prev_symbol = current_sequence[0]
      count = 1
      current_sequence.split('').drop(1).each do |symbol|
        if symbol == prev_symbol
          count += 1
        else
          next_seq << count.to_s << prev_symbol
          count = 1
        end
        prev_symbol = symbol
      end
    end
    next_seq
  end

end