Factory.define(:placement) do |placement|
  placement.section "A section"
  placement.ad_type "Standard Banner"
  placement.start_date 1.day.from_now
  placement.end_date 15.days.from_now
end

Factory.define(:buy) do |buy|
  buy.site_name "throbbr.com"
  buy.placements { |placements| [placements.association(:placement)] }
end

Factory.define(:plan) do |plan|
  plan.advertiser_name "Bossy Kitten"
  plan.buys { |buys| [buys.association(:buy)]  }
end