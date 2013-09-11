def no_repeats(year_start, year_end)
  years = *(year_start..year_end)
  years.delete_if{|year| year.to_s.split(//).length != year.to_s.split(//).uniq.length}
end
