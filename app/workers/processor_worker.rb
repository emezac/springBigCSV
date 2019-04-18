class ProcessorWorker
 require 'csv'
 require 'activerecord-import/base'
 require 'activerecord-import/active_record/adapters/mysql2_adapter'
 include Sidekiq::Worker

 sidekiq_options retry: false

 def perform(filelocation,identifier)
   @identifier=identifier
   @file = "#{filelocation}"
   parse(@file)
   puts "SIDEKIQ WORKER UPLOADING CSV FILE: #{@file} "
 end

 def parse(csv)
   myrows=[]
   options = { :headers => true, :encoding => 'UTF-8', :skip_blanks => true}
   CSV.foreach(csv, options).with_index do |row,i|
       row["rownumber"] = i
       row["identifier"] = @identifier 
       myrows << Datum.new(row.to_hash)
   end
   failed = Datum.import myrows 
   frecords =  failed.failed_instances
   errows =[]
   frecords.each do |r|
     e = Errorlog.new
     e.identifier = @identifier
     e.rownumber = r.rownumber
     e.description = r.errors.full_messages
     errows << e 
   end
   Errorlog.import errows
 end

end
