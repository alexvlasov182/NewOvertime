# frozen_string_literal: true

class StaticController < ApplicationController
  def homepage
    if current_user.type == 'AdminUser'
      @pending_approvals = Post.submitted
      @recent_audit_items = AuditLog.last(10)
    else
      @pending_audit_confirmations = current_user.audit_logs.pending.by_start_date
    end
  end
end
