module ApplicationHelper

  def global_msrp
    # also defined separately in the GlobalMsrp model
    GlobalMsrp.first
  end

end
