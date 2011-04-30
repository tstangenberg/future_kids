class KidsController < InheritedResources::Base

  load_and_authorize_resource
  before_filter :prepare_new_journal_entry, :only => [:new, :edit]

protected

  def prepare_new_journal_entry
    @kid.prepare_new_journal_entry
  end

end