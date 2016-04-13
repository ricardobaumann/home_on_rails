class MonthlyExpensesReportController < ApplicationController
  def show
  	#select #as month 
  	query = """
  		select sum(case when so.stock_type > 0 then si.item_prize else 0 end) as income,
  			   sum(case when so.stock_type < 0 then si.item_prize else 0 end) as outcome,
  			   0 as balance,
  			   (case strftime('%m', s.entry_date)
  			     			   	when '01' then 'January' 
  			     			   	when '02' then 'Febuary' 
  			     			   	when '03' then 'March' 
  			     			   	when '04' then 'April' 
  			     			   	when '05' then 'May' 
  			     			   	when '06' then 'June' 
  			     			   	when '07' then 'July' 
  			     			   	when '08' then 'August' 
  			     			   	when '09' then 'September' 
  			     			   	when '10' then 'October' 
  			     			   	when '11' then 'November' 
  			     			   	when '12' then 'December' else '' end)
			 	as month
  		 from stocks s, stock_items si, stock_operations so
  			where s.id = si.stock_id
  			and s.stock_operation_id = so.id
  		group by 3,4
  	"""
  	@months =  JSON.parse(ActiveRecord::Base.connection.execute(query).to_json)
  	p @months
  end
end
