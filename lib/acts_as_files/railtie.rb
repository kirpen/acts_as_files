# encoding: utf-8
module ActsAsFiles

  class Railtie < ::Rails::Railtie #:nodoc:
    
    initializer 'acts_as_files' do |app|
    
      require 'acts_as_files/mongoid/base'        if defined?(Mongoid)
      require 'acts_as_files/active_record/base'  if defined?(ActiveRecord)
      
#      if defined?(Kaminari)
#        require 'kaminari/models/mongoid_extension'
#        ActsAsFiles::Multimedia.send :include, Kaminari::MongoidExtension::Document
#      end

    end # initializer

  end # Railtie

end # ActsAsFiles