Factory.define(:site) do |site|
  site.name "A site"
  site.url "site.com"
  site.billing_contact "Big Balla "
end
Factory.define(:placement) do |placement|
  placement.section "A section"
  placement.ad_type "768x90 Banner"
  placement.start_date 1.day.from_now
  placement.end_date 15.days.from_now
end

Factory.define(:buy) do |buy|
  buy.site_name "facebook.com"
  buy.placements { |placements| [placements.association(:placement)] }
  buy.sites { |sites| [sites.association(:site)]}
end

Factory.define(:plan) do |plan|
  plan.advertiser_name "Bossy Kitten"
  plan.buys { |buys| [buys.association(:buy)]  }
end