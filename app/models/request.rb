class Request < ActiveRecord::Base
  after_initialize :set_status

  private
  def set_status
    self.status ||= false;
  end
end
