require 'appscript'

class GrowlNotify
  VERSION = "0.0.3"
  PRE_1_3_APP = "GrowlHelperApp"
  POST_1_3_APP = "Growl"
  class GrowlNotFound < Exception; end
  class << self
    include Appscript
    
    attr_accessor :application_name, :default_notifications, :notifications, :icon
    @application_name = "Ruby Growl"
    @default_notifications = []
    @notifications = []
    @icon = nil
    
    def config(&block)
      block.call(self)
      register
    end

    def reset!
      [:application_name, :default_notifications, :notifications, :icon].each do |meth|
        send(:"#{meth}=", nil)
      end
    end

    def register
      application.register(:all_notifications => @notifications, :as_application => @application_name, :default_notifications => @default_notifications)
    end
    
    def application
      @application = pre1_3_app
      @application ||= post1_3_app
      raise GrowlNotFound if @application.nil?
      @application
    end
    
    def pre1_3_app
      app(PRE_1_3_APP)
    rescue FindApp::ApplicationNotFoundError
      nil
    end
    
    def post1_3_app
      app(POST_1_3_APP)
    rescue FindApp::ApplicationNotFoundError
      nil
    end

    def send_notification(options= {})
      defaults = {:title => 'no title', :application_name => @application_name, :description => 'no description', :sticky => false, :priority => 0, :with_name => notifications.first}
      local_icon = @icon
      local_icon = options.delete(:icon) if options.include?(:icon)
      if local_icon
        defaults.merge!(:image_from_location => local_icon)
      end
      application.notify(defaults.merge(options))
    end
    
    def very_low(options={})
      options.merge!(:priority => -2)
      send_notification(options)
    end
    
    def moderate(options={})
      options.merge!(:priority => -1)
      send_notification(options)
    end
    
    def normal(options={})
      options.merge!(:priority => 0)
      send_notification(options)      
    end
    
    def high(options={})
      options.merge!(:priority => 1)
      send_notification(options)
    end
    
    def emergency(options={})
      options.merge!(:priority => 2)
      send_notification(options)
    end
    
    def sticky!(options={})
      options.merge!(:sticky => true)
      send_notification(options)
    end
  end

end
