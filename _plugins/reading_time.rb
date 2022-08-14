module ReadingTimeFilter
  def reading_time(input)
    average_words_per_minute = 180
    minutes_label = "minutes"

    words = input.split.size
    minutes = (words / average_words_per_minute).floor

    minutes > 0 ? "#{minutes} #{minutes_label}" : "1 #{minutes_label}"
  end
end

Liquid::Template.register_filter(ReadingTimeFilter)
