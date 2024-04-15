module SolidQueueInterface
  class JobsController < ApplicationController
    def index
      @pagy, @jobs = pagy(SolidQueue::Job.order(created_at: :desc))
    end

    def scheduled
      @pagy, @jobs = pagy(SolidQueue::ScheduledExecution.order(created_at: :desc))
    end

    def failed
      @pagy, @jobs = pagy(SolidQueue::FailedExecution.order(created_at: :desc))
    end

    def blocked
      @pagy, @jobs = pagy(SolidQueue::BlockedExecution.order(created_at: :desc))
    end

    def claimed
      @pagy, @jobs = pagy(SolidQueue::ClaimedExecution.order(created_at: :desc))
    end

    def ready
      @pagy, @jobs = pagy(SolidQueue::ReadyExecution.order(created_at: :desc))
    end

    def recurring
      @pagy, @jobs = pagy(SolidQueue::RecurringExecution.order(created_at: :desc))
    end

    def show
      @job = SolidQueue::FailedExecution.find(params[:id])
    end

    def retry
      @job = SolidQueue::Job.find(params[:id])
      @job.retry
      redirect_to failed_solid_queue_interface_jobs_path, notice: "Successfully retried Job ##{@job.id}"
    end
  end
end
