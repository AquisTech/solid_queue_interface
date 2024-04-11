module SolidQueueInterface
  class JobsController < ApplicationController
    def index
      @jobs = SolidQueue::Job.order(created_at: :desc)
    end

    def scheduled
      @jobs = SolidQueue::ScheduledExecution.order(created_at: :desc)
    end

    def failed
      @jobs = SolidQueue::FailedExecution.order(created_at: :desc)
    end

    def blocked
      @jobs = SolidQueue::BlockedExecution.order(created_at: :desc)
    end

    def claimed
      @jobs = SolidQueue::ClaimedExecution.order(created_at: :desc)
    end

    def ready
      @jobs = SolidQueue::ReadyExecution.order(created_at: :desc)
    end

    def recurring
      @jobs = SolidQueue::RecurringExecution.order(created_at: :desc)
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
