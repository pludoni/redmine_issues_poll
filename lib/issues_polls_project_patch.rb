require_dependency 'project'

module IssuesPollsProjectPatch
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
    
    base.class_eval do
      has_many :poll_hours
    end
    
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
  end
  
end

Project.send(:include, IssuesPollsProjectPatch) unless Project.included_modules.include? IssuesPollsProjectPatch