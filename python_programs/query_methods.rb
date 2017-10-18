# Getting articles from 30 days ago to 10 days ago...
 articles = Article.where(date_published: 30.days.ago.beginning_of_day..10.days.ago.beginning_of_day)
# Getting articles from now to 30 days ago
 articles = Article.where(date_published: 30.days.ago.beginning_of_day..10.days.ago.beginning_of_day)
# with scope
# scope :created_between, lambda {|start_date, end_date| where("date_published >= ? AND date_published <= ?", start_date, end_date )}
Article.created_between(30.days.ago.beginning_of_day, Time.now)
Article.created_between(7.days.ago.beginning_of_day, Time.now)
