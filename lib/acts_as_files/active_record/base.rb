# encoding: utf-8
require 'acts_as_files/active_record/multimedia'
require 'acts_as_files/active_record/manager'

module ActsAsFiles
  
  module Base
    
    def acts_as_files(&block)
        
      r = ::ActsAsFiles::Builder::Context.new
      r.instance_eval &block if block_given?
        
      ::ActsAsFiles::Manager.new(self, r.compile)
        
    end # act_as_files
    
  end # Base
  
end # ActsAsFiles

ActiveRecord::Base.send(:extend, ActsAsFiles::Base)