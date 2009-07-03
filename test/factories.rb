Factory.define(:placement) do |p|
  p.section "A section"
  p.ad_type "Standard Banner"
  p.start_date 1.day.from_now
  p.end_date 15.days.from_now
end