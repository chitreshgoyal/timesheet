class FillTimesheetsController < ApplicationController

  active_scaffold :fill_timesheet do |config|
    
    #config.theme = :red
    #config.actions.add :export
    config.label = "Employee Timesheet"
    config.columns = [:time_in, :time_out, :date, :description]
    config.actions = [:create, :update, :show, :list, :search ]  #:list is used for index action
    
    config.action_links.add 'export_csv', :label => 'Export to Excel', :page => true
    
  end
  
  
 def export_csv
    # find_page is how the List module gets its data. see Actions::List#do_list.
    records = find_page().items
    return if records.size == 0

    # Note this code is very generic.  We could move this method and the
    # action_link configuration into the ApplicationController and reuse it
    # for all our models.
    data = ""
    cls = records[0].class
    data << cls.csv_header << "\r\n"
    records.each do |inst|
      data << inst.to_csv << "\r\n"
    end
    send_data data, :type => 'text/csv', :filename => cls.name.pluralize + '.csv'
 end
  
  
end 